//
//  Player.swift
//  Eldtrich Horror
//
//  Created by  Denis on 13.05.2021.
//

import Foundation

class Player {
    var detective : Detective
    var health : Int
    var brain : Int
    
    init(detective : Detective){
        self.detective = detective
        self.health = detective.maxHealth
        self.brain = detective.maxBrain
    }
}
