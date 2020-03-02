//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Valentin Mille on 14/11/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation


struct Question {
    let text: String
    let answer: [String]
    let correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answer = a
        self.correctAnswer = correctAnswer
    }
}
