//
//  Extensions.swift
//  iOS SKD Worksheet - Week 2
//
//  Created by Eliot Han on 2/7/17.
//  Copyright © 2017 Eliot Han. All rights reserved.
//

import Foundation
import UIKit


/* 
 This is an extension. It allows you to extend the functionality of a class
 
 Extensions in Swift can:
 
 Add computed instance properties and computed type properties
 Define instance methods and type methods
 Provide new initializers
 Define subscripts
 Define and use new nested types
 Make an existing type conform to a protocol

 */

extension UIColor {
    //Allows ui color initialization from hexstring
    convenience init(hexString: String) {
        let hexString: NSString = hexString.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines) as NSString
        let scanner = Scanner(string: hexString as String)
        
        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }
        
        var color:UInt32 = 0
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        
        self.init(red:red, green:green, blue:blue, alpha:1)
    }
}
