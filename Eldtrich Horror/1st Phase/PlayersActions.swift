//
//  PlayersActions.swift
//  Eldtrich Horror
//
//  Created by Denys on 22.07.2021.
//

import Foundation

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

