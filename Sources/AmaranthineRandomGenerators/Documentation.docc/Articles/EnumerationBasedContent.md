# EnumerationBasedContent

This declares an enumeration that is often used. It represents possible scores that could be given.

## Overview

The scores type is an enum that holds five possible values.
- `excellent`
- `good`
- `average`
- `poor`
- `bad`

The type also conforms to the `CustomStringConvertible` protocol and the `Codable` protocol.

It has an underlying typw of `String`

Several methods are available that facilitate bidirectional converstion between the enum and `String` as well as enum and `Int`. The mapping between enum and `Int` is as follows:

- `excellent`   = 0
- `good`        = 1
- `average`     = 2
- `poor`        = 3
- `bad`         = 4

The default value is **`average`**

## Topics

### Types
- ``Scores``

### Methods

- ``Scores/integerFrom(Score:)``
- ``Scores/scoreFrom(Integer:)``
- ``Scores/scoreFrom(Text:)``
- ``Scores/description``

