//
//  LeagueViewController.swift
//  Swoosh
//
//  Created by Winston on 8/25/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    
/*----------------------[ @IBOutlets ]------------------------------------*/
    @IBOutlet weak var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        player = Player()

    }
    
/*----------------------[ @IBActions ]------------------------------------*/
    
    // [ @onNextTapped ] :- Open the skill screen
    @IBAction func onNextButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBAction func onMensButtonTapped( _ sender: Any){
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensButtonTapped(_ sender :Any){
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func OnCoedButtonTapped(_ sender: Any){
        selectLeague(leagueType: "cooed")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            
            //Store data in skillVC.player object
            skillVC.player = player

        }
    }


    /*----------------------[ @Custom Actions ]------------------------------------*/

    // @selectLeague :- Set the player league && Enable the NEXT button
    private func selectLeague(leagueType: String){
        player.desiredLeague = leagueType
        nextButton.isEnabled = true
    }
    
    
    
    
    
    
    ///..../.[ LeagueViewController End brackets ]..
}
