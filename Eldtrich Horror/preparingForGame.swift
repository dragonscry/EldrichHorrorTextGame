//
//  preparingForGame.swift
//  Eldtrich Horror
//
//  Created by Denys on 11.07.2021.
//

import Foundation

func howManyPlayers()->Int
{
    print("How many players will be?")
    
    playersCount = 0
    
    repeat{
        let players = readLine()
        if let pc = players{
            if let intPc = Int(pc){
                if intPc < 9 && intPc > 0{
                    playersCount = intPc
                }
                else {
                    print("Must be 1 to 8 players")
                }
            }
            else {
                print("write a count of players by number")
            }
        }
    }while playersCount == 0
    print("there are \(playersCount) players in game")
    return playersCount
}


