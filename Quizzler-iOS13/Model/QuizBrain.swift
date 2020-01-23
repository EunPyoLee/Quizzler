//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Jason on 1/14/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    let quizArr = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    var score = 0
    var questionNumber = 0
//    func checkAnswer(externalParameter InternalParameter: String) : you can use
//    externalParameter for argument putting area(function call) and internal parameter here
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quizArr[questionNumber].correct {
            self.score += 1
            return true
        }else{
            return false
        }
    }
    //Getter for question
    func getQuestionText() -> String {
        return quizArr[questionNumber].text
    }
    func getChoices() -> [String] {
        return quizArr[questionNumber].choices
    }
    //Getter for progression
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quizArr.count)
    }
    //Increment to next quiz question
    mutating func nextQuestion () {
        self.questionNumber = (self.questionNumber + 1) % self.quizArr.count
        if self.questionNumber == 0 {
            score = 0
        }
    }
    func getScore() -> Int {
        return self.score;
    }
}
