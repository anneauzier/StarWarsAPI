//
//  PeopleTableVC.swift
//  StarWarsAPI
//
//  Created by Anne Victoria Batista Auzier on 05/07/23.
//

import UIKit

class PeopleTableVC: UITableViewController {
    
    var people: [People] = []
//    var mockPeople = MockPeople()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        people = mockPeople.getPeople()
        RESTService.getPeople { people in
            self.people = people

            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPeople", for: indexPath)
        let people = people[indexPath.row]
        cell.textLabel?.text = people.name
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue" {
            let vc = segue.destination as! DetailsPeopleVC
            vc.people = people[tableView.indexPathForSelectedRow!.row]
        }
    }
}
