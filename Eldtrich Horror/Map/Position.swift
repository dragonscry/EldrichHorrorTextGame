//
//  Position.swift
//  Eldtrich Horror
//
//  Created by  Denis on 25.05.2021.
//

import Foundation

enum location //type of Position
{
    case city
    case sea
    case dump
}

enum ways //way which location connected
{
    case way
    case railway
    case seaway
}

struct Position
{
    let name : String
    let type : location
    let connectedWith : [(ways, String)]
    var monsters : [Monster]
    var portals : Bool
    var clue : Bool
}
