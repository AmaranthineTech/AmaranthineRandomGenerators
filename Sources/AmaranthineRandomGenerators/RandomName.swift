//
//  RandomName.swift
//  RandomGen
//
//  Created by Arun Patwardhan on 19/05/23.
//

import Foundation

/**
 Generates a value of type `String` from a predefined list
 
 John
 
 Jack
 
 Jane
 
 Jill
 
 Joe
 
 Jim
 
 Rahul
 
 Raj
 
 Vikram
 
 Joan
 
 Anna
 
 Neha
 
 Pooja
 
 Ram
 
 Sita
 
 Vishal
 
 Ajay
 
 Anjali
 
 David
 
 Bob
 
 Bill
 
 Hal
 
 Vijay
 
 Swati
 
 Rohan
 
 Vikas
 
 Doug
 
 Sherlock
 
 Gandalf
 
 
 
 - since: iOS 14, macOS 11
 - requires: Swift 5.5 or later
 - author: Arun Patwardhan
 - version: 1.0
 - copyright: (c) Amaranthine 2023
 
  [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
 
  [www.amaranthine.in](https://amaranthine.in)
 */

public struct RandomNames {
    
    private init() {
        
    }
    
    private static let names : [String] = ["John",
                                           "Jack",
                                           "Jane",
                                           "Jill",
                                           "Joe",
                                           "Jim",
                                           "Rahul",
                                           "Raj",
                                           "Vikram",
                                           "Joan",
                                           "Anna",
                                           "Neha",
                                           "Pooja",
                                           "Ram",
                                           "Sita",
                                           "Vishal",
                                           "Ajay",
                                           "Anjali",
                                           "David",
                                           "Bob",
                                           "Bill",
                                           "Hal",
                                           "Vijay",
                                           "Swati",
                                           "Rohan",
                                           "Vikas",
                                           "Doug",
                                           "Sherlock",
                                           "Gandalf"]
    
    /**
     Dumps out all the possible values for reference.
     
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    public static func dump() {
        for i in Self.names {
            print(i)
        }
    }
    
    /**
     Generates a value of type `String` from a predefined list
     
     - note: Defaults to `"Alex"`
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    public static func getRandomName() -> String {
        Self.names.randomElement() ?? "Alex"
    }
}
