//
//  NetworkHelper.swift
//  UniversityInformation
//
//  Created by İlkay SEVER (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 18.06.2025.
//

enum ErrorType: Error {
    case urlError
    case decodingError
}

final class NetworkHelper {
    
    static let shared = NetworkHelper()
    
    private init() {}
    
    public var baseUrlString: String {
        get {
            return "http://universities.hipolabs.com/search?country=turkey"
        }
    }
    
}
