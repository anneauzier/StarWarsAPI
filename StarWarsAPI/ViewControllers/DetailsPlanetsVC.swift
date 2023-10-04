//
//  DetailsPlanetsVC.swift
//  StarWarsAPI
//
//  Created by Anne Victoria Batista Auzier on 05/07/23.
//

import UIKit

class DetailsPlanetsVC: UIViewController {
    
    @IBOutlet weak var lbClima: UILabel!
    @IBOutlet weak var lbDiametro: UILabel!
    @IBOutlet weak var lbTerreno: UILabel!
    @IBOutlet weak var lbPopulacao: UILabel!
    
    var planet: Planets!
    
    override func viewDidLoad() {
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        title = planet.name
        lbClima.text = planet.climate
        lbTerreno.text = planet.terrain
        lbPopulacao.text = planet.population
        lbDiametro.text = planet.diameter
    }
    
}
