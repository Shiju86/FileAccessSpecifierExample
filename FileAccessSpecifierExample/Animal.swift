//
//  Specifier.swift
//  FileAccessSpecifierExample
//
//  Created by Shiju Varghese on 09/08/18.
//  Copyright © 2018 Shiju. All rights reserved.
//

import Foundation

// Access Modifiers

// 1.
//internal - By defualt class & struct is internal ----Anything in the module will see the properties & functions
/*
internal struct Animal {
  
  func getName() -> String {
    return "tiger"
  }
  
}
 */

// 2.
// fileprivate - You can't create instance of Animal outside of this file, fileprivate restrict access to anything outside pf this context file ==  Example - like will not able to create an instance of Animal in UIViewController class ==
/*
fileprivate struct Animal {
  
  func getName() -> String {
    return "tiger"
  }
  
}
*/

// 3.
// private - It doesn't restrict the scope of this class ==  We can still create an instance of Animal, but 'getName' method not accesble. Reason is func of Animal class is private.

/*
struct Animal {
  
  private func getName() -> String {
    return "tiger"
  }
  
}
*/

// 4.
// public-private

struct Animal {
  
  public private(set) var age: Int
  
  // public - you can easily access this 'age' variable, but you can't set 'age' value outside of this class. Why? ---- Because we used a private(set) specifier. You can only modifies it's value within the scope.
  
  mutating func updateAnimalAge(updatedAge: Int) {
    
    self.age = updatedAge
    
  }
}












