//
//  MainViewModel.swift
//  CleanArchitecturePracticeProject
//
//  Created by hyunndy on 2023/03/13.
//

import Foundation

class MainViewModel {
    
    var useCase: MainUseCase!
    
    init(useCase: MainUseCase) {
        self.useCase = useCase
    }
    
    func fetch() {
        
        Task {
            do {
                let domainModelArray = try await self.useCase.fetch()
                print(domainModelArray)
            } catch {
                print(error)
            }
        }
        
    }
}
