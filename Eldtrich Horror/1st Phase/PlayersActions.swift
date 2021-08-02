//
//  PlayersActions.swift
//  Eldtrich Horror
//
//  Created by Denys on 22.07.2021.
//

import Foundation

func playersActions(player : inout Player){
    print("Your turn \(player.playersName)")
    var counts = player.countAction
    var doneActions = [String]()
    while counts != 0 {
        
        print("what action \(player.playersName)?") //interact with player
        let answer = readLine()
        
        switch answer {
        case "rest":
            if checkAction(array: &doneActions, action: answer){
                print("it action was done before")
                break
            }
            restFunction(player: &player)
            counts -= 1
        case "travel":
            if checkAction(array: &doneActions, action: answer){
                print("it action was done before")
                break
            }
            travelFunction(player: &player)
            counts -= 1
        case "buy active":
            if checkAction(array: &doneActions, action: answer){
                print("it action was done before")
                break
            }
            buyActiveFunction(player: &player)
            counts -= 1
        case "change":
            if checkAction(array: &doneActions, action: answer){
                print("it action was done before")
                break
            }
            changeFunction(player: &player)
            counts -= 1
        case "prepare to travel":
            if checkAction(array: &doneActions, action: answer){
                print("it action was done before")
                break
            }
            prepareFunction(player: &player)
            counts -= 1
        case "detective function":
            if checkAction(array: &doneActions, action: answer){
                print("it action was done before")
                break
            }
            print("Player \(player.playersName) detective function")
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

