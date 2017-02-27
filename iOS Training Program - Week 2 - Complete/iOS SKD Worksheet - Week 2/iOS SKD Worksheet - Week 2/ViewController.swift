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
    var numberOfSummons: Int = 0   //Counter for helloButton
    var mdbBotView: UIImageView!   //The MDB BOT!
    var summonButton: UIButton! //Summon button
    var smallFrame: CGRect!
    var bigFrame: CGRect!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        view.backgroundColor = UIColor(hexString: "#2ac1bc") //Using our extension
    

    }
    
    //Programmatic UI
    func setupUI(){
        
        //An example of Programmatic UI
        summonButton = UIButton(frame: CGRect(x: view.frame.width/2 - (150/2), y: view.frame.height * (2/3), width: 150, height: 80))
        summonButton.setTitle("Summon the bot!", for: .normal)
        summonButton.titleLabel?.font = UIFont(name: "SFUI-Text", size: 25)
        summonButton.setTitleColor(UIColor.white, for: .normal)
        summonButton.backgroundColor = UIColor.blue
        summonButton.addTarget(self, action: #selector(summonButtonPressed), for: .touchUpInside)

        view.addSubview(summonButton)
        
    
        //Exercise 1: Center summonButton horizontally on the screen.
        
        
        
        //Exercise 2: Create a label underneath the button that says "MDB Bot should not be summoned!"
        let noSummonLabel = UILabel(frame: CGRect(x: view.frame.width/5, y: summonButton.frame.maxY + 20, width: view.frame.width * (3/5), height: 80))
        
        noSummonLabel.text = "MDB Bot should not be summoned!"
        noSummonLabel.textColor = UIColor.black
        noSummonLabel.adjustsFontSizeToFitWidth = true
        view.addSubview(noSummonLabel)
        
        
        // MDB Bot!!
        mdbBotView = UIImageView(frame: CGRect(x: view.frame.width/3, y: 150, width: view.frame.width/3, height: 80))
        let botImage = UIImage(named: "robot")
        mdbBotView.image = botImage
        view.addSubview(mdbBotView)
    
        smallFrame = mdbBotView.frame
        bigFrame = CGRect(x: self.view.frame.width * (1/5), y: 100, width: self.view.frame.width * (3/5), height: 300)

        //Exercise 3: Make the MDB Bot grow and shrink when the button is pressed. You shoud not print "I have been summoned" when shrinking the bot. Instead, say "Goodbye!". There will have to be several structural changes to the current file for this to happen. Ask for hints!
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    //Called when hello button is pressed
    func summonButtonPressed(){
        if summonButton.isSelected { //shrink here
            summonButton.isSelected = false
            
            //A Basic Animation to grow MDB Bot
            UIView.animate(withDuration: 1.5, animations: {
                self.mdbBotView.frame = self.smallFrame
            })

        } else {  //Grow the bot here
            summonButton.isSelected = true
            numberOfSummons += 1
            print("I have been summoned \(numberOfSummons) times!")
            
            //A Basic Animation to grow MDB Bot
            UIView.animate(withDuration: 1.5, animations: {
                self.mdbBotView.frame = self.bigFrame
            })


        }
        
        
    }
    
}

