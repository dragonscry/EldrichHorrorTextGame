//
//  main.swift
//  Eldtrich Horror
//
//  Created by  Denis on 10.05.2021.
//

import Foundation

print("Welcome in Eldrich Horror")

//Initializa Players and Players Count
var playersCount = howManyPlayers() //how many players will play

var players = playersInitializator(playersCnt: playersCount) //Players choose their name and detectives

for player in players{
    print("Player with name \(player.playersName) who played as \(player.detective!.name)")
}

let Mythes = 16 //PlaceHolder for Myths cards

//Main Game
var i = 0 //placeholder for myths loop
while i < 16{
    
    //1st Phase - Actions
    firstPhase(players: players)
    //2nd Phase - Contacts
    
    //3d Phase - Mythes
    
   i+=1
}

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



