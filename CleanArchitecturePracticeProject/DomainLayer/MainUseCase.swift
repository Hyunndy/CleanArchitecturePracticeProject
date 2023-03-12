//
//  MainUseCase.swift
//  CleanArchitecturePracticeProject
//
//  Created by hyunndy on 2023/03/13.
//

/**
 서비스의 비즈니스 로직이 들어있는 UseCase
 이 부분이 모듈화 되어 다른곳에서 쓰일 수 있어야 한다.
 Repository Interface를 포함하여 Data Layer와의 의존성 역전이 발생한다.
 
 이 서비스의 **비즈니스 로직** 이란?
 서비스가 사용자에게 제공하는 영역
 1) 정보를 검색하고 -> search
 2) 검색한 정보를 보여주고 -> fetch
 3) 정보를 클릭한다. 상세 화면을 보여준다. -> detail fetch
 */

import Foundation

// 가장 기본이 되는 API 통신에 필요한 프로토콜
protocol BasicAPIRepository {
    func getData<T: DomainModel>(api: APIDataSource) async throws -> [T]
}

class MainUseCase {
    var repopsitory: BasicAPIRepository!
    
    init(repository: BasicAPIRepository) {
        self.repopsitory = repository
    }
    
    func fetch() async throws -> [MainDomainModel] {
        
        // API 콜
        let api = MainAPI()
        let dataArray = try await repopsitory.getData(api: api) as [MainDomainModel]
        
        print(dataArray)
        return dataArray
    }
    
}
