//
//  PlayStrategy.swift
//  XO-game
//
//  Created by Сергей Чумовских  on 17.12.2021.
//  Copyright © 2021 plasmon. All rights reserved.
//

import Foundation

enum SelectPlayers {
    case withAI, twoPlayers
}

protocol PlayStrategy: AnyObject {

    func choseState(player: Player, markViewPrototype: MarkView, gameViewController: GameViewController, gameboard: Gameboard, gameboardView: GameboardView) -> GameState
}
