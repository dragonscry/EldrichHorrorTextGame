//
//  Player.swift
//  Eldtrich Horror
//
//  Created by  Denis on 13.05.2021.
//

import Foundation

class Player {
    var playersName : String
    var detective : Detective?
    //health and brain property for player
    var maxHealth : Int
    var maxBrain : Int
    var tickets = 0
    var clue = 0
    var countAction = 2
    
    //get and set properties to manipulate health and brain property
    
    let knowledge : Int
    let communication : Int
    let attention : Int
    let strength : Int
    let will : Int
    
    var successNumbers = [5,6]
    
    init(name: String, detective : Detective){
        playersName = name
        self.detective = detective
        self.maxHealth = detective.maxHealth
        self.maxBrain = detective.maxBrain
        self.knowledge = detective.knowledge
        self.communication = detective.communication
        self.attention = detective.attention
        self.strength = detective.strength
        self.will = detective.will
    }
}
