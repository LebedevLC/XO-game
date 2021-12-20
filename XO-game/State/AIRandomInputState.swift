//
//  AIRandomInputState.swift
//  XO-game
//
//  Created by Сергей Чумовских  on 17.12.2021.
//  Copyright © 2021 plasmon. All rights reserved.
//

import Foundation

class AIRandomInputState: GameState {
    
    public private(set) var isCompleted = false

    public let player: Player
    private(set) weak var gameViewController: GameViewController?
    private(set) weak var gameboard: Gameboard?
    private(set) weak var gameboardView: GameboardView?
    let markViewPrototype: MarkView

    init(player: Player, markViewPrototype: MarkView, gameViewController: GameViewController, gameboard: Gameboard, gameboardView: GameboardView) {
        self.player = player
        self.markViewPrototype = markViewPrototype
        self.gameViewController = gameViewController
        self.gameboard = gameboard
        self.gameboardView = gameboardView
    }

    public func begin() {
        switch self.player {
        case .first:
            self.gameViewController?.firstPlayerTurnLabel.isHidden = false
            self.gameViewController?.secondPlayerTurnLabel.isHidden = true
        case .second:
            self.gameViewController?.firstPlayerTurnLabel.isHidden = true
            self.gameViewController?.secondPlayerTurnLabel.isHidden = false
        }
        self.gameViewController?.winnerLabel.isHidden = true
    }

    public func addMark(at position: GameboardPosition) {
        guard
            let gameboardView = self.gameboardView,
            gameboardView.canPlaceMarkView(at: position)
        else { return }
        
        Log(.playerInput(player: player, position: position))

        self.gameboard?.setPlayer(self.player, at: position)
        
        switch self.player {
        case .first:
            self.gameboardView?.placeMarkView(self.markViewPrototype.copy(), at: position)
        case .second:
            self.gameboardView?.placeRandomMarkView(self.markViewPrototype.copy())
        }
        self.isCompleted = true
    }

}
