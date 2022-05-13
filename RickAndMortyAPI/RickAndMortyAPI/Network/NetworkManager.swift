//
//  NetworkManager.swift
//  RickAndMortyAPI
//
//  Created by Admin on 11.05.2022.
//

import Foundation
import UIKit

final class NetworkManager {
    static let shared = NetworkManager()
    
    
    func fetchData<T: Decodable>(urlString:  String,
                                 dataType:   T.Type,
                                 completion: @escaping(T) -> Void) {
        
        guard let url = URL(string: urlString) else {
            fatalError("some Error")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let dataResult = try JSONDecoder().decode(dataType, from: data)
                completion(dataResult)
            }
            catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
