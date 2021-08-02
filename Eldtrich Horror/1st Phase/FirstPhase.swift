//
//  FirstPhase.swift
//  Eldtrich Horror
//
//  Created by Denys on 22.07.2021.
//

import Foundation

func firstPhase(players: inout [Player]){
    for i in 0..<players.count{
        playersActions(player: &players[i])
    }
}
