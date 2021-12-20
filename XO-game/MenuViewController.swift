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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "goToAI":
            let destinationVC = segue.destination as? GameViewController
            destinationVC?.playersStrategy = AIPlayerStrategy()
        case "goToTwoPlayers":
            let destinationVC = segue.destination as? GameViewController
            destinationVC?.playersStrategy = TwoPlayersStrategy()
        default:
            break
        }
    }
    
}
