//
//  NetworkManager.swift
//  UniversityInformation
//
//  Created by İlkay SEVER (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 18.06.2025.
//

import Foundation

final class NetworkManager {
    
    public static let shared = NetworkManager()
    
    private init() {}
    
    public var url: String {
        get {
            return "http://universities.hipolabs.com/search?country=turkey"
        }
    }
    
}
