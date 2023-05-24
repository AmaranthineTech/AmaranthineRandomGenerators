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

//MARK: - Writing to stdout
let stdoutOperation : AppLogger.Operations = AppLogger.Operations.debug

appLogger.customLog(message: "This is the item we want to write to stdout.", operation: stdoutOperation)
