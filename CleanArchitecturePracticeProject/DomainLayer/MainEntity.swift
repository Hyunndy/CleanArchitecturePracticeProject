//
//  MainEntity.swift
//  CleanArchitecturePracticeProject
//
//  Created by hyunndy on 2023/03/13.
//

import Foundation

protocol Entity {
    
}

struct MainEntity: Decodable, Entity {
    var id: Int
    var title: String?
    var descriotion: String?
    var ingredients: [String]?
    var image: String?
}
