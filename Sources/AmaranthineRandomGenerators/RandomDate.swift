//
//  RandomDate.swift
//  RandomGen
//
//  Created by Arun Patwardhan on 19/05/23.
//

import Foundation

public extension Date {
    /**
     Generates a random `Date`.
     
     - note: The value will range between 1st January 1970 to 28th March 2023
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    static func getRandomDate() -> Date {
        Date(timeIntervalSince1970: Double.random(in: 0.0...1680000000.0))
    }
}
