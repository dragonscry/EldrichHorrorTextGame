//
//  main.swift
//  Eldtrich Horror
//
//  Created by  Denis on 10.05.2021.
//

import Foundation

enum PossibleGameErrors : Error{
    case EmptyName
    case NotInt
}

print("Welcome in Eldrich Horror")


//Initiliaze Eldrich
print("Choose your Eldrich")
var eldrich = readLine()

// there will be list of Eldrich

print("You choose \(eldrich ?? "you didn't choose Eldrich")")

//Initializa Players and Players Count
print("How many players will be?")
var playersCount = 0
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

//TEST DELETE
var d1 = Detective(name: "John", job: "Artist", maxHealth: 6, maxBrain: 6)
var d2 = Detective(name: "Josh", job: "Photographer", maxHealth: 6, maxBrain: 6)
var d3 = Detective(name: "Jake", job: "Actor", maxHealth: 6, maxBrain: 6)
var detecrives = [d1,d2,d3]
var players = [Player]()

//TODO make initializa players
for i in 0..<playersCount{
    print("Your name player!")
    let playerName = readLine()
    players.append(Player(name: playerName!, detective: detecrives[i]))
}

//TEST DELETE
print(players)
for player in players{
    print("Players name is \(player.playersName)")
    print("Players detective is \(player.detective.name)")
    print("Players detective job is \(player.detective.job)")
}

//Game counter is Myth Cards Count

//Main Game Cicle
//repeat {
    // 1st Phase (Players Action)
    
    //2nd Phase (Players Contacts)
    
    //3th Phase (Mythes)
    
    
//}
//while false // Game End if myth Cards Count = 0



