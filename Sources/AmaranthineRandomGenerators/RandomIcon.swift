//
//  RandomIcon.swift
//  RandomGen
//
//  Created by Arun Patwardhan on 19/05/23.
//

import Foundation

/**
 Generates a value of type `String` from a predefined list
 
"person"
 
"person.fill"
 
"person.2.circle"
 
"person.2.circle.fill"
 
"house"
 
"house.fill"

"lamp.floor"
 
"lamp.floor.fill"
 
"mic"
 
"mic.fill"
 
"bubble.right"
 
"bubble.right.fill"
 
"phone.down"
 
"phone.down.fill"
 
"sun.min"
 
"sun.min.fill"
 
"sun.max"
 
"sun.max.fill"
 
"moon"
 
"moon.fill"
 
"pencil"
 
"pencil.circle"
 
"pencil.circle.fill"
 
"eraser"
 
"eraser.fill"
 
"tray"
 
"tray.fill"
 
"doc.text"
 
"doc.text.fill"
 
"scanner"
 
"scanner.fill"
 
"airtag"
 
"airtag.fill"
 
"macstudio"
 
"macstudio.fill"
 
"bolt.circle"
 
"bolt.circle.fill"
 
"livephoto"
 
"livephoto.slash"
 
"f.cursive"
 
"f.cursive.circle"
 
"f.cursive.circle.fill"
 
"gamecontroller"
 
"gamecontroller.fill"
 
"personalhotspot"
 
"personalhotspot.circle"
 
"personalhotspot.circle.fill"
 
"wave.3.left"
 
"wave.3.left.circle"
 
"wave.3.left.circle.fill"
 
"airplane"
 
"airplane.circle"
 
"airplane.circle.fill"
 
"ferry"
 
"ferry.fill"
 
"key.horizontal"
 
"key.horizontal.fill"
 
"seal"
 
"seal.fill"
 
"heart"
 
"heart.fill"
 
"clock"
 
"clock.fill"
 
"indianrupeesign"
 
"indianrupeesign.circle"
 
"indianrupeesign.circle.fill"
 
"indianrupeesign.square"
 
"indianrupeesign.square.fill"
 
 
 - since: iOS 14, macOS 11
 - requires: Swift 5.5 or later
 - author: Arun Patwardhan
 - version: 1.0
 - copyright: (c) Amaranthine 2023
 
  [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
 
  [www.amaranthine.in](https://amaranthine.in)
 */
public struct RandomIcon {
    
    private init() {
        
    }
    
    private static let icons : [String] = ["person",
                                           "person.fill",
                                           "person.2.circle",
                                           "person.2.circle.fill",
                                           "house",
                                           "house.fill",
                                           "lamp.floor",
                                           "lamp.floor.fill",
                                           "mic",
                                           "mic.fill",
                                           "bubble.right",
                                           "bubble.right.fill",
                                           "phone.down",
                                           "phone.down.fill",
                                           "sun.min",
                                           "sun.min.fill",
                                           "sun.max",
                                           "sun.max.fill",
                                           "moon",
                                           "moon.fill",
                                           "pencil",
                                           "pencil.circle",
                                           "pencil.circle.fill",
                                           "eraser",
                                           "eraser.fill",
                                           "tray",
                                           "tray.fill",
                                           "doc.text",
                                           "doc.text.fill",
                                           "scanner",
                                           "scanner.fill",
                                           "airtag",
                                           "airtag.fill",
                                           "macstudio",
                                           "macstudio.fill",
                                           "bolt.circle",
                                           "bolt.circle.fill",
                                           "livephoto",
                                           "livephoto.slash",
                                           "f.cursive",
                                           "f.cursive.circle",
                                           "f.cursive.circle.fill",
                                           "gamecontroller",
                                           "gamecontroller.fill",
                                           "personalhotspot",
                                           "personalhotspot.circle",
                                           "personalhotspot.circle.fill",
                                           "wave.3.left",
                                           "wave.3.left.circle",
                                           "wave.3.left.circle.fill",
                                           "airplane",
                                           "airplane.circle",
                                           "airplane.circle.fill",
                                           "ferry",
                                           "ferry.fill",
                                           "key.horizontal",
                                           "key.horizontal.fill",
                                           "seal",
                                           "seal.fill",
                                           "heart",
                                           "heart.fill",
                                           "clock",
                                           "clock.fill",
                                           "indianrupeesign",
                                           "indianrupeesign.circle",
                                           "indianrupeesign.circle.fill",
                                           "indianrupeesign.square",
                                           "indianrupeesign.square.fill"]
    
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
        for i in Self.icons {
            print(i)
        }
    }
    
    /**
     Generates a value of type `String` from a predefined list
     
     - note: Defaults to `"scribble"`
     - important: The image names match the system SF Symbol icons.
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    public static func getRandomIcon() -> String {
        Self.icons.randomElement() ?? "scribble"
    }
                                           
}
