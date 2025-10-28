//
//  UniversityModel.swift
//  UniversityInformation
//
//  Created by İlkay SEVER (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 28.10.2025.
//

struct UniversityModel: Codable {
    
    let webPages: [String]?
    let country: String?
    let domains: [String]?
    let name: String?
    
    private enum CodingKeys: String, CodingKey {
        case webPages = "web_pages"
        case country
        case domains
        case name
    }
    
}
