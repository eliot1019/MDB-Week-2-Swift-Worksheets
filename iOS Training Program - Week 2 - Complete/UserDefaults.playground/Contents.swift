//: Playground - noun: a place where people can play

import UIKit
import Foundation

//MARK: UserDefaults

//What is UserDefaults??
/*
 All iOS apps have a built in data dictionary that stores small amounts of user settings for as long as the app is installed. This system, called UserDefaults can save integers, booleans, strings, arrays, dictionaries, dates and more, but you should be careful not to save too much data because it will slow the launch of your app.
*/


//Setting values to UserDefaults
let defaults = UserDefaults.standard
defaults.set(50, forKey: "iq")
defaults.set(true, forKey: "isPresident")
defaults.set("Donald Trump", forKey: "name")


//Retrieving Values
let age = defaults.integer(forKey: "iq")
let useTouchID = defaults.bool(forKey: "isPresident")
let name = defaults.string(forKey: "name")

let aBool = defaults.bool(forKey: "bool") //returns false, a default value
let aDouble = defaults.double(forKey: "double")//returns 0.0, a default val


//Exercise: Create an array of integers from 1 to 5 and save it to defaults.
var nums: [Int] = []
for i in 1..<6 {
    nums.append(i)
}
defaults.set(nums, forKey: "numbers")
let numbers: [Int] = defaults.array(forKey: "numbers") as! [Int]




//Food for thought: Can UserDefaults save an array of UIImage objects?




