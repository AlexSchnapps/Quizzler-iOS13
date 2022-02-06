//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Александр on 05.02.2022.

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
