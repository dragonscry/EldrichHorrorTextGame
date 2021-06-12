//
//  BaseFunction.swift
//  Eldtrich Horror
//
//  Created by  Denis on 13.05.2021.
//

import Foundation

func success(successNumbers : [Int], number : Int) -> Bool {
    if successNumbers.contains(number)
    {
        return true
    }
    else
    {
        return false
    }
}

func dice() -> Int {
    return Int.random(in: 1..<7)
}

func countDice(){
    
}

func check(checkWhat : String, modificator : Int, player : Player) -> Bool{
    var number : Int
    switch checkWhat {
    case "strength":
        number = player.strength
    case "knowledge":
        number = player.knowledge
    case "communication":
        number = player.communication
    case "attention":
        number = player.attention
    case "will":
        number = player.will
    default:
        number = 1
    }
    
    if number-modificator<1{
        number = 1
    }
    else {
        number -= modificator
    }
    
    for _ in 0..<number{
        let value = dice()
        if success(successNumbers: player.successNumbers, number: value){
            return true
        }
    }
    return false
}


