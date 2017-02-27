//
//  ViewController.swift
//  iOS SKD Worksheet - Week 2

/*
Topics to cover in this worksheet
 1. Frames
 2. Programmatic UI
 3. Object Properties
 4. View Controller Lifecycle
 5. Extensions
 
 Additional Topics to study
 1. Constraints --> Programmatic, not through storyboard
 2. Cocoapods, We have an excellent youtube tutorial on these
 https://www.youtube.com/watch?v=SlY39ga19ws&t=332s
 3. CollectionViews
 https://www.youtube.com/watch?v=WiETQhgV2uI
*/

import UIKit

class ViewController: UIViewController {
    var tableView: UITableView?    //This will be our tableView
    var numberOfSummons: Int = 0   //Counter for helloButton
    var mdbBotView: UIImageView!   //The MDB BOT!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        view.backgroundColor = UIColor(hexString: "#2ac1bc") //Using our extension

    }
    
    //Programmatic UI
    func setupUI(){
        
        //An example of Programmatic UI
        let summonButton = UIButton(frame: CGRect(x: view.frame.width/2, y: view.frame.height * (2/3), width: 150, height: 80))
        summonButton.setTitle("Summon the bot!", for: .normal)
        summonButton.titleLabel?.font = UIFont(name: "SFUI-Text", size: 25)
        summonButton.setTitleColor(UIColor.white, for: .normal)
        summonButton.backgroundColor = UIColor.blue
        summonButton.addTarget(self, action: #selector(summonButtonPressed), for: .touchUpInside)
        view.addSubview(summonButton)
        
        //Exercise 1: Center summonButton horizontally on the screen.
        
        
        
        //Exercise 2: Create a label underneath the button that says "MDB Bot should not be summoned!"
  
        
        
        
        // MDB Bot!!
        mdbBotView = UIImageView(frame: CGRect(x: view.frame.width/3, y: 150, width: view.frame.width/3, height: 80))
        let botImage = UIImage(named: "robot")
        mdbBotView.image = botImage
        view.addSubview(mdbBotView)
    
        
        //Exercise 3: Make the MDB Bot grow and shrink when the button is pressed. You shoud not print "I have been summoned" when shrinking the bot. Instead, say "Goodbye!". There will have to be several structural changes to the current file for this to happen. Ask for hints!
        
        
        
        
    }
    
 
    
    //Called when hello button is pressed
    func summonButtonPressed(){
        numberOfSummons += 1
        print("I have been summoned \(numberOfSummons) times!")
        
        //A Basic Animation to grow MDB Bot
        UIView.animate(withDuration: 1.5, animations: {
            self.mdbBotView.frame = CGRect(x: self.view.frame.width * (1/5), y: 100, width: self.view.frame.width * (3/5), height: 300)
            
        })
    }
    
}

