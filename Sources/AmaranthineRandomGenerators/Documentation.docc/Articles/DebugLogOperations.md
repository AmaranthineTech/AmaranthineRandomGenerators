# DebugLogOperations

This type encapsulates the logic to print to stdout and the logic to write logs to the unified logging system into a single unified logic.

## Overview

There are underlying types and methods that make this possible.

The actions can be performed via the ``AppLogger`` type. It is recommended that you create a separate instance of the ``AppLogger`` for every different part in your project. The category could represent the part of your project. 


Creating the ``AppLogger`` is very easy. All you have to do is provide the value for the subsystem and category. The subsystem is optional as it defaults to the bundle identifier or blank. It might be a good idea to go ahead and check the bundle identifier.


``AppLogger/customLog(message:severity:operation:)`` is the method that will be invoked to log any information. It has 3 arguments - 

**message**: This is the actual message to be written.

**severity**: This allows the user to specify the severity of the event. This is used to determine which log type it should be written to.

operation: This allows the user to specify if the message should be sent to both, stdout and the logging system, or only to stdout.

## Topics

### Types

- ``AppLogger``
- ``AppLogger/Operations``
- ``AppLogger/Severity``

### Creation
- ``AppLogger/init(WithSubsystem:andCategory:)``



### Log action
- ``AppLogger/customLog(message:severity:operation:)``



