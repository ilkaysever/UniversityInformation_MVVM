//
//  NetworkHelper.swift
//  UniversityInformation
//
//  Created by İlkay SEVER (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 18.06.2025.
//

import Foundation

final class NetworkHelper {
    
    static let shared = NetworkHelper()
    
    private init() {}
    
}

struct Constants {
    static var baseUrlString: String {
        get {
            return "http://universities.hipolabs.com/search?country=turkey"
        }
    }
    
    public var baseUrlString: String {
        get {
            return "http://universities.hipolabs.com/search?country=turkey"
        }
    }
    static let latest = "/latest?"
    static let countryCode = "tr"
    static let topHeadLines = "top"
    static let sportsPath = "sports"
    static let technology = "technology"
    static let business = "business"
    static let science = "science"
    static let entertainment = "entertainment"
    static let health = "health"
    static let world = "world"
    static let politics = "politics"
    static let environment = "environment"
    
    // MARK: - News API için;
    // https://collectapi.com/ adresinden hesap oluşturup, aşağıdaki newsApiKey parametresine kendi API
    // keyinizi string olarak ekleyerek isteklerinizi atabilirsiniz.
    static let newsApiKey = "pub_695304227b686ae355083afc97d27ea4e4818"
    
    // MARK: - OpenWeather API için;
    // https://api.openweathermap.org adresinden hesap oluşturup, aşağıdaki weatherApiKey parametresine kendi API
    // keyinizi string olarak ekleyerek isteklerinizi atabilirsiniz.
    static let weatherBaseUrl = "https://api.openweathermap.org"
    static let weatherApiKey = "f29dca0b8344ffbe396499a542c687d8"
    
    static let cryptoBaseUrl = "https://api.coingecko.com"
}

enum ErrorType: String, Error {
    case serverError = "Server Error"
    case invalidData = "Invalid Data"
    case invalidURL = "Inlavid Url"
    case parsingError = "Data Parsing Error"
    case unknownError = "An error unknown"
}
