//
//  APIService.swift
//  CleanArchitecturePracticeProject
//
//  Created by hyunndy on 2023/03/13.
//

import Foundation

enum APIError: Error {
    case network
}

class APIService: BasicAPIRepository {
    
    func getData<T: DomainModel>(api: APIDataSource) async throws -> [T] {
        let request = URLRequest(url: URL(string: api.url)!)
        let (data, response) = try await URLSession.shared.data(for: request)
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw APIError.network
        }
        
        // Entity로 decode
        let dataArray = try api.entityToDomainModel(data: data) as [T]
        return dataArray
    }
}
