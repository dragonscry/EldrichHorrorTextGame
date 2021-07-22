//
//  FirstPhase.swift
//  Eldtrich Horror
//
//  Created by Denys on 22.07.2021.
//

import Foundation

func firstPhase(players:[Player]){
    for player in players{
        playersActions(player: player)
    }
}
