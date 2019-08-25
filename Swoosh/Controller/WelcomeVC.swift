//
//  ViewController.swift
//  Swoosh
//
//  Created by Winston on 8/22/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    
/*----------------------[ @IBOutlets ]------------------------------------*/
    @IBOutlet weak var swooshLogo: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    /** ----[ ViewDidLoad ] -----------*/
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
/*----------------------[ @IBActions ]------------------------------------*/
    //MARK:- Return to the previous view controller
    @IBAction func unwindFromSkillVC (unwindSegue: UIStoryboardSegue){
    }

    

/*----------------------[ @Custom Actions ]------------------------------------*/
    //MARK:- Auto layout frames programmatically
    private func autoLayout(){
        //Auto center swoosh logo
        swooshLogo.frame = CGRect(x: view.frame.size.width / 2 - swooshLogo.frame.size.width / 2, y: 50, width: swooshLogo.frame.size.width, height:swooshLogo.frame.size.height)
        
        //Auto Fill background image
        backgroundImage.frame = view.frame
        
    }


}

