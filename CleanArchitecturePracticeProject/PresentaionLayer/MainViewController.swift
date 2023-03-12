//
//  ViewController.swift
//  CleanArchitecturePracticeProject
//
//  Created by hyunndy on 2023/03/13.
//

import UIKit

class MainViewController: UIViewController {

    var viewModel = MainViewModel(useCase: MainUseCase(repository: APIService()))
    
//    init(viewModel: MainViewModel) {
//        let useCase = MainUseCase(repository: APIService())
//        self.viewModel = MainViewModel(useCase: useCase)
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewModel.fetch()
        
    }

//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainTableViewCell

        return cell
    }
    
    
    
}

