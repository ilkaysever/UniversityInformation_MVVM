//
//  NetworkManager.swift
//  UniversityInformation
//
//  Created by İlkay SEVER (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 18.06.2025.
//

import Alamofire
import Foundation

final class NetworkManager {
    
    public static let shared = NetworkManager()
    
    private init() {}
    
    static func fetchData(completion: @escaping (Result<[UniversityModel], ErrorType>) -> Void) {
        AF.request(NetworkHelper.shared.baseUrlString).response { response in
            
            if response.error != nil {
                completion(.failure(.urlError))
                return
            }
            
            guard let data = response.data else { return }
            debugPrint(String(data: data, encoding: .utf8) ?? "")
            
            do {
                let data = try JSONDecoder().decode([UniversityModel].self, from: data)
                completion(.success(data))
            } catch {
                completion(.failure(.decodingError))
            }
            
        }
    }
    
}
