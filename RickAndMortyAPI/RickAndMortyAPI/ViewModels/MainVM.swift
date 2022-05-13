//
//  MainVM.swift
//  RickAndMortyAPI
//
//  Created by Admin on 13.05.2022.
//

import Foundation

class MainVM {
    var characters: [Characters]?
    
    //func getJsonData(completion: @escaping() -> Void) {
    func getJsonData() {
        NetworkManager.shared.fetchData(urlString: "\(RequestURL.characters.rawValue)1",
                                        dataType: Characters.self) { result in
            print(result.info.pages)
            
        }
    }
    
}
