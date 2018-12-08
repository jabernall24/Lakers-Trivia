//
//  EasyQuestions.swift
//  Lakers Trivia
//
//  Created by Jesus Andres Bernal Lopez on 11/21/18.
//  Copyright © 2018 Jesus Andres Bernal Lopez. All rights reserved.
//

import Foundation

class Questions {
    
    var question = ""
    var correctAnswer = ""
    var optionTwo = ""
    var optionThree = ""
    var optionFour = ""
    
    init(question: String, correctAnswer: String, optionTwo: String, optionThree: String, optionFour: String){
        self.question = question
        self.correctAnswer = correctAnswer
        self.optionTwo = optionTwo
        self.optionThree = optionThree
        self.optionFour = optionFour
    }
}
