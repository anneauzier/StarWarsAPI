//
//  DetailsPeopleVC.swift
//  StarWarsAPI
//
//  Created by Anne Victoria Batista Auzier on 05/07/23.
//

import UIKit

class DetailsPeopleVC: UIViewController {
    
    var people: People!

    @IBOutlet weak var lbMass: UILabel!
    @IBOutlet weak var lbHeight: UILabel!
    @IBOutlet weak var lbHair: UILabel!
    @IBOutlet weak var lbSkin: UILabel!
    @IBOutlet weak var lbEyeColor: UILabel!
    @IBOutlet weak var lbBirthday: UILabel!
    @IBOutlet weak var lbGender: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = people.name

        lbHeight.text = people.height
        lbMass.text = people.mass
        lbHair.text = people.hair_color
        lbSkin.text = people.skin_color
        lbGender.text = people.gender
        lbBirthday.text = people.birth_year
        lbEyeColor.text = people.eye_color
    }
}
