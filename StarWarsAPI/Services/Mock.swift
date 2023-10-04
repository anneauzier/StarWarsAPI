//
//  Mock.swift
//  StarWarsAPI
//
//  Created by Anne Victoria Batista Auzier on 05/07/23.
//

import Foundation

struct MockPlanets: PlanetsServiceProtocol {
    
    private static let mockupPlanets: [Planets] = [
        Planets(name: "Tatooine", diameter: "10465", terrain: "desert", population: "200000", climate: "arid"),
        Planets(name: "Alderaan", diameter: "12500", terrain: "grasslands, mountains", population: "2000000000", climate: "temperate"),
        Planets(name: "Yavin IV", diameter: "10200", terrain: "jungle rainforests", population: "1000", climate: "temperate tropical")
    ]
    
    func getPlanets() -> [Planets] {
        return Self.mockupPlanets
    }
}

struct MockPeople: PeopleServiceProtocol {

    private static let mockupPeople: [People] = [
        People(name: "Luke Skywalker" , height: "172", mass: "77", hair_color: "blond", skin_color: "fair", eye_color: "blue", birth_year: "19BBY", gender: "male"),
        People(name: "C-3PO", height: "167", mass: "75", hair_color: "n/a", skin_color: "gold", eye_color: "yellow", birth_year: "112BBY", gender: "n/a")
    ]
               
    func getPeople() -> [People] {
        return Self.mockupPeople
    }
}

