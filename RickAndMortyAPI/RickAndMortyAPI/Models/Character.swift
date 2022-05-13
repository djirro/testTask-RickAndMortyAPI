//
//  Character.swift
//  RickAndMortyAPI
//
//  Created by Admin on 11.05.2022.
//

import Foundation

struct InfoAndResults: Decodable {
    let info: Info
    let results: [Results]
}

struct Info: Decodable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}

struct Results: Decodable {
    let name: String
    let status: String
    let species: String
    let gender: String
    let location: Location
    let image: String
}

struct Location: Decodable {
    let name: String
}
