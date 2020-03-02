//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Valentin Mille on 14/11/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct QuizBrain {
    let quiz = [
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
    var questionNumber = 0
    var score: Int = 0
    var goodAnswer: Bool = false
    
    
    mutating func checkAnswer(_ userAnswer: String) -> UIColor {
        if (userAnswer == quiz[questionNumber].correctAnswer) {
            goodAnswer = true
            return (UIColor.green)
        } else  {
            return (UIColor.red)
        }
    }
    
    func getQuestionText() -> String {
        return (quiz[questionNumber].text)
    }
    
    func getProgress() -> Float {
        return (Float(questionNumber + 1) / Float(quiz.count))
    }
    
    mutating func nextQuestion() {
        if (self.questionNumber + 1 < quiz.count) {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    mutating func getScore(_ totalQuestion: Int) -> Int {
        if (goodAnswer == true) {
            score += 1
            goodAnswer = false
        }
        return score
    }
    
    func getNextAnswers() -> [String] {
        return (quiz[questionNumber].answer)
    }
}
