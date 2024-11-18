//
//  QuestionResponseDTO.swift
//  Cosmo
//
//  Created by 변정훈 on 11/19/24.
//

import Foundation


struct QuestionResponseDTO: Decodable {
    let questions: [QuestionDTO]
}

struct QuestionDTO: Decodable {
    let question: String
    let choices: [String]
    let answer: Int
    
    func toDomain() -> Question {
        return Question(
            question: question,
            choices: choices,
            answer: answer
        )
    }
}
