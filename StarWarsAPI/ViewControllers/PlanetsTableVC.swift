//
//  PlanetsTableVC.swift
//  StarWarsAPI
//
//  Created by Anne Victoria Batista Auzier on 05/07/23.
//

import UIKit

class PlanetsTableVC: UITableViewController {
    
    var planets: [Planets] = []
    var isSelected: Bool = false
    // var mockPlanets = MockPlanets()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // planets = mockPlanets.getPlanets()
        RESTService.getPlanets { planet in
            self.planets = planet
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let planet = planets[indexPath.row]
        cell.textLabel?.text = planet.name
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewSegue" {
            let vc = segue.destination as! DetailsPlanetsVC
            vc.planet = planets[tableView.indexPathForSelectedRow!.row]
        }
    }
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
}
