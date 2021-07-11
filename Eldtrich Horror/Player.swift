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
    
    //get and set properties to manipulate health and brain property
    
    let knowledge : Int
    let communication : Int
    let attention : Int
    let strength : Int
    let will : Int
    
    var successNumbers = [5,6]
    //travel method to change position
    func travel() {
        print("\(playersName) travel")
    }
    
    //buy ticket
    func prepareForTravel(){
        print("\(playersName) prepare for travel")
    }
    
    //buy items - active
    func buyActive()
    {
        print("\(playersName) buy active")
    }
    
    //method for rest
    func rest() {
            maxHealth += 1
            maxBrain += 1
        checkHealth()
    }
    
    func checkHealth() {
        if let currentDetective = self.detective{
            if maxHealth > currentDetective.maxHealth {
                maxHealth = currentDetective.maxHealth
            }
            if maxBrain > currentDetective.maxBrain {
                maxBrain = currentDetective.maxBrain
            }
        }
    }
    
    func die(){
        self.detective = nil
    }
    
    //metod for changing items with another player
    func change(){
        
    }

    //method for special detective action
    func detectiveAction(){
        if let det = detective{
            det.action()
        }
        else {
            print("You have not detective")
        }
    }
    
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
