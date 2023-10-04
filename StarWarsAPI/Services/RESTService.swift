//
//  RESTService.swift
//  StarWarsAPI
//
//  Created by Anne Victoria Batista Auzier on 05/07/23.
//

import Foundation

class RESTService {

    private static let basePath = "https://swapi.dev/api/planets/"
    private static let peoplePath = "https://swapi.dev/api/people/"

    private static let configuration: URLSessionConfiguration = {
        let config = URLSessionConfiguration.default
        config.httpAdditionalHeaders = ["Content-Type": "application/json"]
        config.timeoutIntervalForRequest = 30.0
        config.httpMaximumConnectionsPerHost = 5
        return config
    }()
    
    private static let session = URLSession(configuration: configuration)
    
    class func getPlanets(onComplete: @escaping ([Planets]) -> Void) {
        guard let url = URL(string: basePath) else {return}
        
        let dataTask = session.dataTask(with: url) { data, response, error in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {return}
                if response.statusCode == 200 {
                    guard let data = data else {return}
                    do {
                        let response = try JSONDecoder().decode(PlanetsResponse.self, from: data)
                        let planets = response.results
                        onComplete(planets)
                    } catch {
                        print("não conseguiu decodificar")
                    }
                }
                
            }
        }
        dataTask.resume()
    }
    
    class func getPeople(onComplete: @escaping ([People]) -> Void) {
        guard let url = URL(string: peoplePath) else {return}
        
        let dataTask = session.dataTask(with: url) { data, response, error in
            if error == nil {
                guard let response = response as? HTTPURLResponse else {return}
                if response.statusCode == 200 {
                    guard let data = data else {return}
                    do {
                        let response = try JSONDecoder().decode(PeopleResponse.self, from: data)
                        let people = response.results
                        onComplete(people)
                    } catch {
                        print("não conseguiu decodificar")
                    }
                }
            }
        }
        dataTask.resume()
    }
}
