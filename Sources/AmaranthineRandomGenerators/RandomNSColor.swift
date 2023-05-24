//
//  File.swift
//  
//
//  Created by Arun Patwardhan on 21/05/23.
//

#if canImport(AppKit)
import AppKit
public extension NSColor {
    /**
     Generate a `NSColor` value
     
     - since: macOS 11
     - requires: Swift 5.5 or later, `AppKit` framework
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    func randomColor() -> NSColor {
        NSColor(red: CGFloat.random(in: 0.0...1.0),
                green: CGFloat.random(in: 0.0...1.0),
                blue: CGFloat.random(in: 0.0...1.0),
                alpha: 1.0)
    }
}
#endif
