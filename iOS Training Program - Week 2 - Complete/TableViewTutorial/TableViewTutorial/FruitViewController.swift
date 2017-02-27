//
//  FruitViewController.swift
//  TableViewTutorial
//
//  Created by Eliot Han on 2/11/17.
//  Copyright © 2017 Eliot Han. All rights reserved.
//

import UIKit

class FruitViewController: UIViewController {
    var fruit: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    
    }
    
    func setupUI(){
        let fruitLabel = UILabel(frame: CGRect(x: 0, y: view.frame.height/2, width: view.frame.width, height: 60))
        fruitLabel.text = fruit ?? "No fruit passed?"  //nil coalescing operator
        fruitLabel.textColor = UIColor.black
        view.addSubview(fruitLabel)
        
    }

    
}
