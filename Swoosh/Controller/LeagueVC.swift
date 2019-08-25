//
//  LeagueViewController.swift
//  Swoosh
//
//  Created by Winston on 8/25/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
/*----------------------[ @IBOutlets ]------------------------------------*/
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
/*----------------------[ @IBActions ]------------------------------------*/
    
    // [ @onNextTapped ] :- Open the skill screen
    @IBAction func onNextButtonTapped(_ sender: Any) {
    
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
}
