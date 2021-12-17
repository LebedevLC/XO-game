//
//  MenuViewController.swift
//  XO-game
//
//  Created by Сергей Чумовских  on 17.12.2021.
//  Copyright © 2021 plasmon. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var AIBtton: UIButton!
    @IBOutlet weak var TwoPlayersButton: UIButton!
    
    
    @IBAction func AIButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToAI", sender: nil)
    }
    
    @IBAction func TwoPlayersButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "goToTwoPlayers", sender: nil)
    }
    
    
}
