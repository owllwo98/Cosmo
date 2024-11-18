//
//  QuestionRepository.swift
//  Cosmo
//
//  Created by 변정훈 on 11/19/24.
//

import Foundation

protocol QuestionRepository {
    func fetchQuestions(for subject: String) async throws -> [Question]
}
