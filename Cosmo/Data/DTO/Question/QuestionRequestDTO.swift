//
//  QuestionRequestDTO.swift
//  Cosmo
//
//  Created by 변정훈 on 11/19/24.
//

import Foundation

struct QuestionRequestDTO: Encodable {
    let subject: String
    
    func toMessage() -> [ChatMessage] {
        return [
            ChatMessage(role: "system", content: "You are a professional software programmer."),
            ChatMessage(
                role: "user",
                content: "\(subject)에 대한 객관식 질문 10개를 만들어줘. 형식은 다음과 같아:\n [\"question\": String,\n\"choices\": Array<String>,\n\"answer\": Int\n in Korean,\n 선지는 총 4개야. 정답은 1에서 4 사이의 숫자여야 해. 형식을 반드시 지켜줘.]"
            )
        ]
    }
}


