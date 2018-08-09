//
//  ViewController.swift
//  FileAccessSpecifierExample
//
//  Created by Shiju Varghese on 09/08/18.
//  Copyright © 2018 Shiju. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var animal = Animal(age:20)
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
   // print(animal.getName()) // internal
    
    // You can Update within the Struct, but not in other UIViewController class
    
  //  animal.age = 40 //Compile time Error - Cannot assign to property: 'age' setter is inaccessible
    
    print("Animal age: \(animal.age)")

    print(animal.updateAnimalAge(updatedAge: 10))
    
    print("Animal updated age: \(animal.age)")

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

