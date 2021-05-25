//
//  Player.swift
//  Eldtrich Horror
//
//  Created by  Denis on 13.05.2021.
//

import Foundation

class Player {
    var playersName : String
    var detective : Detective
    //health and brain property for player
    var maxHealth : Int
    var maxBrain : Int
    
    //get and set properties to manipulate health and brain property
    var health : Int{
        get{
            return maxHealth
        }
        set {
            if newValue > detective.maxHealth
            {
                maxHealth = detective.maxHealth
            }
            else{
                maxHealth = newValue
            }
        }
    }
    var brain : Int{
        get{
            return maxBrain
        }
        set {
            if newValue > detective.maxBrain
            {
                maxBrain = detective.maxBrain
            }
            else{
                maxBrain = newValue
            }
        }
    }
    
    func rest() {
        health += 1
        print("your player health is \(health)")
        brain += 1
        print("your player health is \(brain)")
    }
    
    
    init(name: String, detective : Detective){
        playersName = name
        self.detective = detective
        self.maxHealth = detective.maxHealth
        self.maxBrain = detective.maxBrain
    }
}
