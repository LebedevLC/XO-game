//
//  TwoPlayersStrategy.swift
//  XO-game
//
//  Created by Сергей Чумовских  on 17.12.2021.
//  Copyright © 2021 plasmon. All rights reserved.
//

import Foundation

class TwoPlayersStrategy: PlayStrategy {
    
    func choseState(player: Player, markViewPrototype: MarkView, gameViewController: GameViewController, gameboard: Gameboard, gameboardView: GameboardView) -> GameState {
        PlayerInputState(player: player, markViewPrototype: markViewPrototype, gameViewController: gameViewController, gameboard: gameboard, gameboardView: gameboardView)
    }
}
