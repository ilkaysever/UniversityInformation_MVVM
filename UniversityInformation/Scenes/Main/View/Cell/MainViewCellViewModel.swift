//
//  MainViewCellViewModel.swift
//  UniversityInformation
//
//  Created by İlkay SEVER (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 30.10.2025.
//

import UIKit

struct MainViewCellViewModel {
    
    private let model: UniversityModel
    
    init(model: UniversityModel) {
        self.model = model
    }
    
    var name: String {
        return model.name ?? "Unknown"
    }
    
    var url: URL? {
        return URL(string: model.webPages?.first ?? "https://wwww.google.com")
    }
    
}
