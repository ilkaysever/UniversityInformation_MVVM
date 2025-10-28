//
//  MainViewModel.swift
//  UniversityInformation
//
//  Created by İlkay SEVER (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 18.06.2025.
//

import UIKit

protocol MainViewModelProtocol {
    func fetchData(completion: @escaping([UniversityModel]?) -> Void)
}

final class MainViewModel: MainViewModelProtocol {
    
    var dataResult: [UniversityModel] = []
    
    func fetchData(completion: @escaping([UniversityModel]?) -> Void) {
        NetworkManager.fetchData { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let data):
                self.dataResult = data
                completion(self.dataResult)
            case .failure(let error):
                debugPrint(error.localizedDescription)
            }
        }
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return 50
    }
    
}
