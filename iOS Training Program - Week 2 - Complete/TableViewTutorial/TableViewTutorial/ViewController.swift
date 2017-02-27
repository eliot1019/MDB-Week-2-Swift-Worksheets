//
//  ViewController.swift
//  TableViewTutorial
//
//  Created by Eliot Han on 1/28/17.
//  Copyright © 2017 Eliot Han. All rights reserved.
//

/*
 1. Learn about UITableView
 2. Introduction to Protocol/Delegates
 3. If time allows: Intro to MVC
 
 Additional resources: https://m.youtube.com/watch?v=Fs18vbfKhdU  -- Using storyboard
 https://www.youtube.com/watch?v=H9NhYx9xIiU  -- Programmatic
 
 
 */
import UIKit

class ViewController: UIViewController{
    let fruits = ["Apple", "Pineapple", "Orange", "Blackberry", "Banana", "Pear", "Kiwi", "Strawberry", "Mango", "Walnut", "Apricot", "Tomato", "Almond", "Date", "Melon", "Water Melon", "Lemon", "Coconut", "Fig", "Passionfruit", "Star Fruit", "Clementin", "Citron", "Cherry", "Cranberry"]
    var tableView: UITableView!   //Our tableView
    var fruitToPass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
    }
    
    func setupTableView(){
        //Initialize TableView Object here
        tableView = UITableView(frame: CGRect(x: 0, y: UIApplication.shared.statusBarFrame.maxY, width: view.frame.width, height: view.frame.height))
        //Register the tableViewCell you are using
        tableView.register(NameTableViewCell.self, forCellReuseIdentifier: "nameCell")
        
        //Set properties of TableView
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 50
        tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 50/2, right: 0)
        //Add tableView to view
        view.addSubview(tableView)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToFruitVC" {
            let fruitVC = segue.destination as! FruitViewController
            fruitVC.fruit = fruitToPass
        }
    }
    
    
}

//MARK: Required TableView Methods will go here

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell") as! NameTableViewCell
        
        for subview in cell.contentView.subviews{
            subview.removeFromSuperview()
        }
        
        cell.awakeFromNib()
        cell.nameLabel.text = fruits[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        fruitToPass = fruits[indexPath.row]
        performSegue(withIdentifier: "segueToFruitVC", sender: self)
    }
    
    
    
    
}

