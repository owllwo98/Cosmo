//
//  QuestionRepositoryImpl.swift
//  Cosmo
//
//  Created by 변정훈 on 11/19/24.
//

import Foundation

final class QuestionRepositoryImpl: QuestionRepository {
    private let apiClient: APIClient
    
    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    func fetchQuestions(for subject: String) async throws -> [Question] {
        let requestDTO = QuestionRequestDTO(subject: subject)
        let messages = requestDTO.toMessage()
        
        do {
            let responseDTO: QuestionResponseDTO = try await apiClient.post(
                endpoint: "/v1/questions",
                body: messages
            )
            return responseDTO.questions.map { $0.toDomain() }
        } catch {
            throw error
        }
    }
}
