//
//  RandomLines.swift
//  RandomGen
//
//  Created by Arun Patwardhan on 19/05/23.
//

import Foundation

/**
 Generates a value of type `String` from a predefined list
 
"Search your feelings!"
 
"Not all those who wander are lost"
 
"The game is afoot"
 
"What does lorem ipsum even mean?"
 
"To be or not to be that is the question"
 
"I tried to catch some fog earlier. I mist."
 
"A backwards poet writes inverse."
 
"A moon rock tastes better than an earthly rock because it's meteor."
 
"Why did the scarecrow get a promotion? He was outstanding in his field."
 
"If a dish towel could tell a joke, I think it would have a dry sense of humor"
 
"When a clock is hungry... It goes back four seconds."
 
"Diarrhea is hereditary... It runs in your genes."
 
"I once heard a joke about amnesia... But I forget how it goes."
 
"I'm inclined...to be laid back."
 
"The Magician got frustrated and pulled his hare out."
 
"Those fish were shy. They were obviously coy."
 
"What did the triangle say to the circle? You're so pointless."
 
"It doesn't matter how much you push the envelope. It'll still be stationary."
 
"I stayed up all night wondering where the sun went. And then it dawned on me."
 
"How does a computer get drunk? It takes screenshots."
 
"Why can't a nose be 12 inches? Because then it would be a foot."
 
"I'm reading a book about anti-gravity. It's impossible to put down."
 
"I'm glad I know sign language. It's become quite handy."
 
"I forgot how to throw a boomerang. But it came back to me."
 
"To the guy who invented zero, thanks for nothing."
 
"The truth is out there"
 
 
 - since: iOS 14, macOS 11
 - requires: Swift 5.5 or later
 - author: Arun Patwardhan
 - version: 1.0
 - copyright: (c) Amaranthine 2023
 
  [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
 
  [www.amaranthine.in](https://amaranthine.in)
 */
public struct RandomLines {
    
    private init() {
        
    }
    
    private static let lines : [String] = ["Search your feelings!",
                                           "Not all those who wander are lost",
                                           "The game is afoot",
                                           "What does lorem ipsum even mean?",
                                           "To be or not to be that is the question",
                                           "I tried to catch some fog earlier. I mist.",
                                           "A backwards poet writes inverse.",
                                           "A moon rock tastes better than an earthly rock because it's meteor.",
                                           "Why did the scarecrow get a promotion? He was outstanding in his field.",
                                           "If a dish towel could tell a joke, I think it would have a dry sense of humor",
                                           "When a clock is hungry... It goes back four seconds.",
                                           "Diarrhea is hereditary... It runs in your genes.",
                                           "I once heard a joke about amnesia... But I forget how it goes.",
                                           "I'm inclined...to be laid back.",
                                           "The Magician got frustrated and pulled his hare out.",
                                           "Those fish were shy. They were obviously coy.",
                                           "What did the triangle say to the circle? You're so pointless.",
                                           "It doesn't matter how much you push the envelope. It'll still be stationary.",
                                           "I stayed up all night wondering where the sun went. And then it dawned on me.",
                                           "How does a computer get drunk? It takes screenshots.",
                                           "Why can't a nose be 12 inches? Because then it would be a foot.",
                                           "I'm reading a book about anti-gravity. It's impossible to put down.",
                                           "I'm glad I know sign language. It's become quite handy.",
                                           "I forgot how to throw a boomerang. But it came back to me.",
                                           "To the guy who invented zero, thanks for nothing.",
                                           "The truth is out there"]
    
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
        for i in Self.lines {
            print(i)
        }
    }
    
    /**
     Generates a value of type `String` from a predefined list
     
     - note: Defaults to `"Hello, World!"`
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    public static func getRandomLine() -> String {
        Self.lines.randomElement() ?? "Hello, World!"
    }
}
