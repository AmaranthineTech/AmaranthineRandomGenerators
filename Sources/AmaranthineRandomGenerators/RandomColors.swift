//
//  RandomColors.swift
//  RandomGen
//
//  Created by Arun Patwardhan on 20/05/23.
//


import UIKit
import SwiftUI

@available(iOS 13.0, *)
public extension Color {
    /**
     Generate a `Color` value
     
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later, `SwiftUI` framework
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    func randomColor() -> Color {
        Color(red: Double.random(in: 0.0...1.0),
              green: Double.random(in: 0.0...1.0),
              blue: Double.random(in: 0.0...1.0))
    }
}

public extension UIColor {
    /**
     Generate a `UIColor` value
     
     - since: iOS 14
     - requires: Swift 5.5 or later, `UIKit` framework
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    func randomColor() -> UIColor {
        UIColor(red: CGFloat.random(in: 0.0...1.0),
                green: CGFloat.random(in: 0.0...1.0),
                blue: CGFloat.random(in: 0.0...1.0),
                alpha: 1.0)
    }
}


