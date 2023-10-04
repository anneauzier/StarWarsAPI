//
//  Planets.swift
//  StarWarsAPI
//
//  Created by Anne Victoria Batista Auzier on 05/07/23.
//

import Foundation

struct Planets: Codable {
    var name: String
    var diameter: String
    var terrain: String
    var population: String
    var climate: String
    
}

struct PlanetsResponse: Codable {
    let results: [Planets]
}
