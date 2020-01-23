//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Jason on 11/22/19.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let choices: [String]
    let correct: String
    
    init(q: String, a: [String], correctAnswer: String){
        self.text = q
        self.choices = a
        self.correct = correctAnswer
    }
}
