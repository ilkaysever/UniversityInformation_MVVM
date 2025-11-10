//
//  MainViewModel.swift
//  UniversityInformation
//
//  Created by İlkay SEVER (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 18.06.2025.
//

import UIKit

protocol MainViewModelProtocol {
    func fetchData(completion: @escaping([UniversityModel]?) -> Void)
    func numberOfRowsInSection(_ section: Int) -> Int
    func configureCell(with model: UniversityModel) -> MainViewCellViewModel
}

final class MainViewModel: MainViewModelProtocol {
    
    var dataResult: [UniversityModel] = []
    
    func fetchData(completion: @escaping([UniversityModel]?) -> Void) {
        NetworkManager.fetchData { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let data):
                self.dataResult = data
                let sortedData = data.sorted {
                    ($0.name ?? "").localizedCaseInsensitiveCompare($1.name ?? "") == .orderedAscending
                }
                dataResult = sortedData
                completion(self.dataResult)
            case .failure(let error):
                debugPrint(error.localizedDescription)
            }
        }
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return dataResult.count
    }
    
    func configureCell(with model: UniversityModel) -> MainViewCellViewModel {
        let cellModel = MainViewCellViewModel(model: model)
        return cellModel
    }
    
}
