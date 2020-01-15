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
    let answer: String
    
    init(q: String, a: String){
        self.text = q
        self.answer = a
    }
}
