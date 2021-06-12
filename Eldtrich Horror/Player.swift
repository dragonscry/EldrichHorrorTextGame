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
    
    var clue: Int
    
    //get and set properties to manipulate health and brain property
    var health : Int{
        get{
            return maxHealth
        }
        set {
            if let det = detective{
                if newValue > det.maxHealth
                {
                    maxHealth = det.maxHealth
                }
                else{
                    maxHealth = newValue
                }
            }
            else {
                print("You have not detective")
            }
           
        }
    }
    var brain : Int{
        get{
            return maxBrain
        }
        set {
            if let det = detective{
                if newValue > det.maxBrain
                {
                    maxHealth = det.maxBrain
                }
                else{
                    maxHealth = newValue
                }
            }
            else {
                print("You have not detective")
            }
           
        }
    }
    
    let knowledge : Int
    let communication : Int
    let attention : Int
    let strength : Int
    let will : Int
    
    var successNumbers = [5,6]
    //travel method to change position
    func travel() {
        
    }
    
    //buy ticket
    func prepareForTravel(){
        
    }
    
    //buy items - active
    func buyActive()
    {
        
    }
    
    //method for rest
    func rest() {
        health += 1
        print("your player health is \(health)")
        brain += 1
        print("your player health is \(brain)")
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
        clue = 0
    }
}
