//
//  ViewController.swift
//  RickAndMortyAPI
//
//  Created by Admin on 11.05.2022.
//

import UIKit

class ViewController: UIViewController {
    var characters: [InfoAndResults] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        getJsonData()
    }
    
    //func getJsonData(completion: @escaping() -> Void) {
    func getJsonData() {
        NetworkManager.shared.fetchData(urlString: "\(RequestURL.characters.rawValue)1",
                                        dataType: InfoAndResults.self) { result in
            print(result.info.pages)
            
        }
    }


}

