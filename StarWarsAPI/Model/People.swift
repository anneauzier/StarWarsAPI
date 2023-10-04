//
//  People.swift
//  StarWarsAPI
//
//  Created by Anne Victoria Batista Auzier on 05/07/23.
//

import Foundation

struct People: Codable {
    var name: String
    var height: String
    var mass: String
    var hair_color: String
    var skin_color: String
    var eye_color: String
    var birth_year: String
    var gender: String
    
}

struct PeopleResponse: Codable {
    let results: [People]
}

