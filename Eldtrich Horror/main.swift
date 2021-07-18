//
//  main.swift
//  Eldtrich Horror
//
//  Created by  Denis on 10.05.2021.
//

import Foundation

print("Welcome in Eldrich Horror")

//Initializa Players and Players Count
var playersCount = howManyPlayers()

var players = playersInitializator(playersCnt: playersCount)

for player in players{
    print("Player with name \(player.playersName) who played as \(player.detective!.name)")
}

//TODO make initializa players


//Initiliaze Eldrich
//print("Choose your Eldrich")
//print("You choose \(eldrich ?? "you didn't choose Eldrich")")
//var eldrich = readLine()

// there will be list of Eldrich

//Game counter is Myth Cards Count

//Main Game Cicle
//repeat {
    // 1st Phase (Players Action)
    
    //2nd Phase (Players Contacts)
    
    //3th Phase (Mythes)
    
    
//}
//while false // Game End if myth Cards Count = 0



