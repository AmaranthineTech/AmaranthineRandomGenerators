//
//  RandomScores.swift
//  RandomGen
//
//  Created by Arun Patwardhan on 19/05/23.
//

import Foundation
/**
 This enumeration defines the type scores. It is to be used in any rating logic
 
 
 __VALUES__
 
 `excellent`
 
 `good`
 
 `average`
 
 `poor`
 
 `bad`
 
 
* * * * *
 
 __Conforms to the following protocols__
 
 `CustomStringConvertible`
 
 `Codable`
 
* * * * *
 
 __Mapping to Integer__
 
 `excellent` = 0
 
 `good` = 1
 
 `average` = 2
 
 `poor` = 3
 
 `bad` = 4
 
 - note: The underlying type of the enum is `String`
 - since: iOS 14, macOS 11
 - requires: Swift 5.5 or later
 - important: When converting from `Int` to `Scores` note that the values start from `0` and end at `4`.
 - warning: In case an incorrect or unknow `Int` or `String` value is given then the score defaults to `average`.
 - Tip: Use the `rawValue` to get the string value.
 - author: Arun Patwardhan
 - version: 1.0
 - copyright: (c) Amaranthine 2023
 
  [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
 
  [www.amaranthine.in](https://amaranthine.in)
 */
public enum Scores : String {
    case excellent
    case good
    case average
    case poor
    case bad
}

extension Scores : CustomStringConvertible {
    public var description: String {
        switch self {
        case .excellent:
            return "Excellent"
        case .good:
            return "Good"
        case .average:
            return "Average"
        case .poor:
            return "Poor"
        case .bad:
            return "Bad"
        }
    }
}

public extension Scores {
    /**
     Generate a `Scores` value from an `Int`
     
     - note: The underlying type of the enum is `String`
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - important: When converting from `Int` to `Scores` note that the values start from `0` and end at `4`.
     - warning: In case an incorrect or an unknown `Int` or `String` value is given then the score defaults to `average`.
     - parameter input: This is the `Int` equivalent value of the enum.
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    static func scoreFrom(Integer input : Int) -> Scores {
        switch input {
        case 0:
            return Scores.excellent
        case 1:
            return Scores.good
        case 2:
            return Scores.average
        case 3:
            return Scores.poor
        case 4:
            return Scores.bad
        default:
            return Scores.average
        }
    }
    
    /**
     Generate an `Int` value from a `Scores` value
     
     - note: The underlying type of the enum is `String`
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - parameter input: This is the `Scores` value
     - Tip: Use the `rawValue` to get the string value.
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    static func integerFrom(Score input : Scores) -> Int {
        switch input {
        case .excellent:
            return 0
        case .good:
            return 1
        case .average:
            return 2
        case .poor:
            return 3
        case .bad:
            return 4
        }
    }
    
    /**
     Generate a `Scores` value from a `String` value
     
     - note: The underlying type of the enum is `String`
     - important: The input `String` is first converted to lower case.
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - parameter input: This is the `String` value
     - warning: In case an incorrect or an unknown `String` value is given then the score defaults to `average`.
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    static func scoreFrom(Text input : String) -> Scores {
        let score : String = input.lowercased()
        switch score {
        case "excellent":
            return Scores.excellent
        case "good":
            return Scores.good
        case "average":
            return Scores.average
        case "poor":
            return Scores.poor
        case "bad":
            return Scores.bad
        default:
            return Scores.average
        }
    }
}

extension Scores : Codable {
    
}
