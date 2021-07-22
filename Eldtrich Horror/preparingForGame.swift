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

func playersInitializator(playersCnt: Int)->[Player]{
    print("So lets begin")
    print("Let me know your name and choose your Detective")
    var players = [Player]()
    var detectivesList = detectives
    for i in 0..<playersCnt{
        print("Your name player!")
        let playerName = readLine()
        print("Choose your detective")
        print("Choose from the list")
        for d in detectivesList{
            print("\(d.name) as \(d.job)")
        }
        let det = readLine()
        
        if isNameOfDetective(name: det, list: detectivesList){
            players.append(Player(name: playerName ?? "Player \(i)", detective: deleteDetectiveFromList(detectiveList: &detectivesList, name: det ?? "zero")))
        }
        else{
            players.append(Player(name: playerName ?? "Player \(i)", detective: detectivesList[i]))
        }
    }
    return players
}

func isNameOfDetective(name : String?, list : [Detective])->Bool{
    
    for detective in list{
        if name == detective.name{
            return true
        }
    }
    return false
}

func deleteDetectiveFromList(detectiveList : inout Array<Detective>, name : String)->Detective{
    for i in 0..<detectiveList.count{
        if name == detectiveList[i].name{
            return detectiveList.remove(at: i)
        }
    }
    return Detective(name: "", job: "", knowledge: 0, communication: 0, attention: 0, strength: 0, will: 0, maxHealth: 0, maxBrain: 0)
}

