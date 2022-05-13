//
//  URLs.swift
//  RickAndMortyAPI
//
//  Created by Admin on 11.05.2022.
//

import Foundation

enum RequestURL: String {
    case baseURL           = "https://rickandmortyapi.com/api/character"
    case characters        = "https://rickandmortyapi.com/api/character?page="
    case aliveCharacters   = "https://rickandmortyapi.com/api/character/?status=alive&page="
    case deadCharacters    = "https://rickandmortyapi.com/api/character/?status=dead&page="
    case unknownCharacters = "https://rickandmortyapi.com/api/character/?status=unknown&page="
    case searchByName      = "https://rickandmortyapi.com/api/character?name=&page="
}
