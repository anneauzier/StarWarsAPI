//
//  ServiceProtocol.swift
//  StarWarsAPI
//
//  Created by Anne Victoria Batista Auzier on 05/07/23.
//

import Foundation

protocol PlanetsServiceProtocol {
    func getPlanets() -> [Planets]
}

protocol PeopleServiceProtocol {
    func getPeople() -> [People]
}
