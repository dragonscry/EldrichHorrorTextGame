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

func playersActions(player : Player){
    print("Your turn \(player.playersName)")
    var counts = player.countAction
    var doneActions = [String]()
    while counts != 0 {
        print("what action \(player.playersName)?")
        let answer = readLine()
        switch answer {
        case "rest":
            if checkAction(array: &doneActions, action: answer){
                print("it action was done before")
                break
            }
            print("Player \(player.playersName) rest")
            counts -= 1
        case "attack":
            if checkAction(array: &doneActions, action: answer){
                print("it action was done before")
                break
            }
            print("Player \(player.playersName) attack")
            counts -= 1
        case "move":
            if checkAction(array: &doneActions, action: answer){
                print("it action was done before")
                break
            }
            print("Player \(player.playersName) move")
            counts -= 1
        default:
            print("No such action, try again")

        }
    }
    print("Your round is end")

}

func checkAction ( array: inout Array<String>, action : String?)->Bool
{
    if let answer = action {
        if array.contains(answer){
           return true
        }
        else{
            array.append(answer)
            return false
        }
    }
    return false
}

