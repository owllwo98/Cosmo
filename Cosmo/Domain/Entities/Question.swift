//
//  Question.swift
//  Cosmo
//
//  Created by 변정훈 on 11/19/24.
//

import Foundation

struct Question {
    let question: String
    let choices: [String]
    let answer: Int
}

struct ChatMessage: Encodable {
    let role: String      // "system", "user", "assistant" 중 하나
    let content: String   // 실제 메시지 내용
}
