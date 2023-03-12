//
//  APIDataSource.swift
//  CleanArchitecturePracticeProject
//
//  Created by hyunndy on 2023/03/13.
//

/**
 서비스에서 사용할 DataSource 중 API 프로토콜 정의
 */
import Foundation

protocol APIDataSource {
    var url: String { get }
    
    func entityToDomainModel<T: DomainModel>(data: Data) throws -> [T]
}

class MainAPI: APIDataSource {
    
    var url: String = "https://api.sampleapis.com/coffee/hot"
    
    func entityToDomainModel<T>(data: Data) throws -> [T] where T : DomainModel {
        let entityArray = try JSONDecoder().decode([MainEntity].self, from: data)
        
        var domainModelArray = [MainDomainModel]()
        for entity in entityArray {
            domainModelArray.append(MainDomainModel(id: entity.id, title: entity.title, descriotion: entity.descriotion, ingredients: entity.ingredients, image: entity.image))
        }
        return domainModelArray as! [T]
    }
}
