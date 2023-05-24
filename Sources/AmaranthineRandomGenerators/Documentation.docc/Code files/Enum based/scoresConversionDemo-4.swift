//
//  scoresConversionDemo.swift
//  
//
//  Created by Arun Patwardhan on 22/05/23.
//

import AmaranthineRandomGenerators

var rating : Scores = Scores.good

var numericRating : Int = Scores.integerFrom(Score: rating)

var textRating : String = "\(rating)"
