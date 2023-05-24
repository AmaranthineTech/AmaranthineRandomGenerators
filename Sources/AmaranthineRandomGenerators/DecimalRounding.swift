//
//  DecimalRounding.swift
//  RandomGen
//
//  Created by Arun Patwardhan on 20/05/23.
//

import Foundation

public extension Double {
    /**
     Generates a value of type `Double` that is rounded off to the specified number of places.
     
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - parameter count: This is the number of spaces
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
     [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
     [www.amaranthine.in](https://amaranthine.in)
     */
    func roundToPlaces(count : Int) -> Double {
        let divisor = pow(10.0, Double(count))
        return (self * divisor).rounded() / divisor
    }
}

public extension Float {
    /**
     Generates a value of type `Float` that is rounded off to the specified number of places.
     
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - parameter count: This is the number of spaces
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
     [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
     [www.amaranthine.in](https://amaranthine.in)
     */
    func roundToPlaces(count : Int) -> Float {
        let divisor = pow(10.0, Float(count))
        return (self * divisor).rounded() / divisor
    }
}

#if(os(iOS))
@available(iOS 14.0, *)
public extension Float16 {
    /**
     Generates a value of type `Float16` that is rounded off to the specified number of places.
     
     - since: iOS 14
     - requires: Swift 5.5 or later
     - parameter count: This is the number of spaces
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
     [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
     [www.amaranthine.in](https://amaranthine.in)
     */
    func roundToPlaces(count : Int) -> Float16 {
        let divisor = pow(10.0, Double(count))
        return Float16((Double(self) * divisor).rounded() / divisor)
    }
}
#endif
public extension Float80 {
    /**
     Generates a value of type `Float80` that is rounded off to the specified number of places.
     
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - parameter count: This is the number of spaces
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
     [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
     [www.amaranthine.in](https://amaranthine.in)
     */
    func roundToPlaces(count : Int) -> Float80 {
        let divisor = pow(10.0, Float80(count))
        return (self * divisor).rounded() / divisor
    }
}
