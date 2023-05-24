//
//  apploggerDemo.swift
//  
//
//  Created by Arun Patwardhan on 24/05/23.
//

import AmaranthineRandomGenerators

let subSystemName : String = Bundle.main.bundleIdentifier ?? "demo.Subsystem"

let messageName : String = "AppDemo"

let appLogger : AppLogger = AppLogger(WithSubsystem: subSystemName,
                                      andCategory: messageName)

//MARK: - Writing to log file
let logOperations : AppLogger.Operations = AppLogger.Operations.log

let urgency : AppLogger.Severity = AppLogger.Severity.error

appLogger.customLog(message: "This is the item that we want to write to the log file.",
                    severity: urgency,
                    operation: logOperations)
