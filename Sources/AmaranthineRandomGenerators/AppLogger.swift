//
//  AppLogger.swift
//  RandomGen
//
//  Created by Arun Patwardhan on 20/05/23.
//

import Foundation
import os

/**
 This object handles unified logging as well as printing on stdout.
 
 It is advised to create one object for each part of your app. They may all share the same subsystem but would likely have different categories.
 
 - note: User has the choice of only printing to stdout or both: stdout and unified logs
 - since: iOS 14, macOS 11
 - requires: Swift 5.5 or later, `os` framework.
 - important: It is necessary to give the appropriate subsystem name and category
 - warning: The logger takes the default bundle id if not specified.
 - author: Arun Patwardhan
 - version: 1.0
 - copyright: (c) Amaranthine 2023
 
  [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
 
  [www.amaranthine.in](https://amaranthine.in)
 */
@available(iOS 14.0, *)
public struct AppLogger {
    /**
     This enum defines the different log levels. These correspond with the log levels of the unified logging system.
     
     __Severity Values__
     
     `debug`
     
     `info`
     
     `defaultType`
     
     `error`
     
     `fault`
     
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    public enum Severity {
        case debug
        case info
        case defaultType
        case error
        case fault
    }
    
    /**
     This enum defines the different log levels. These correspond with the log levels of the unified logging system.
     
     __Operations Values__
     
     `debug`
     
     `debugAndLog`
     
     `log`

     - note: Choose `debug` if you wish to print to stdout only. If you wish to print to stdout and to the logs select `debugAndLog` or `log` if you only wish to write to the log file..
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    public enum Operations {
        case debug
        case debugAndLog
        case log
    }
    
    private var defaultLogger    : Logger
    
    /**
    `init` method that creates an instance of the AppLogger

     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - parameters:
        - newSubsystem: This is the name of the subsystem. It defaults to the Bundle identifier or blank.
        - newCategory: This is the category name. It does not have a default value.
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    public init(WithSubsystem newSubsystem : String = Bundle.main.bundleIdentifier ?? " ", andCategory newCategory : String) {
        print(#line, #file, Bundle.main.bundleIdentifier ?? " ")
        self.defaultLogger = Logger(subsystem: newSubsystem, category: newCategory)
    }
    
    /**
     The method that actually performs logging operations. This is the method invoked by the user.

     - note: All the parameters have a default value.
     - since: iOS 14, macOS 11
     - requires: Swift 5.5 or later
     - parameters:
        - message: This is the message to be printed. It defaults to an empty string.
        - severity: This is the severity of the log level. It defaults to default.
        - operation: This is used to specify if the operation is to print the message to stdout only or to both stdout and log. It defaults to both.
     - author: Arun Patwardhan
     - version: 1.0
     - copyright: (c) Amaranthine 2023
     
      [arun@amaranthine.co.in](mailto:arun@amaranthine.co.in)
     
      [www.amaranthine.in](https://amaranthine.in)
     */
    public func customLog(message : String = "", severity: Severity = Severity.defaultType, operation : Operations = .debugAndLog) {
        let dateFormatter   : DateFormatter     = DateFormatter()
        dateFormatter.dateFormat                = "yyyy-MM-dd HH:mm:ssZZZZZ"
        
        let logMessage      : String            = "[\(dateFormatter.string(from: Date()))] \(message)"
        
        if operation == .debugAndLog || operation == .debug {
            print(#file, #line, logMessage)
        }
        
        if operation == .debugAndLog || operation == .log {
            switch severity {
            case .debug:
                defaultLogger.log(level: os.OSLogType.debug, "\(logMessage)")
            case .defaultType:
                defaultLogger.log(level: os.OSLogType.default, "\(logMessage)")
            case .error:
                defaultLogger.log(level: os.OSLogType.error, "\(logMessage)")
            case .fault:
                defaultLogger.log(level: os.OSLogType.fault, "\(logMessage)")
            case .info:
                defaultLogger.log(level: os.OSLogType.info, "\(logMessage)")
            }
        }
    }
}
