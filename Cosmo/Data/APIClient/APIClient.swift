//
//  APIClient.swift
//  Cosmo
//
//  Created by 변정훈 on 11/19/24.
//

import Foundation

protocol APIClient {
    func post<T: Decodable>(endpoint: String, body: [ChatMessage]) async throws -> T
}

final class APIClientImpl: APIClient {
    private let baseURL: String = "https://api.openai.com"
    
    func post<T: Decodable>(endpoint: String, body: [ChatMessage]) async throws -> T {
        guard let url = URL(string: baseURL + endpoint) else {
            throw URLError(.badURL)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.httpBody = try JSONEncoder().encode(body)
        
        let (data, _) = try await URLSession.shared.data(for: request)
        return try JSONDecoder().decode(T.self, from: data)
    }
}
