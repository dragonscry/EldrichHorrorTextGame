//
//  Detective.swift
//  Eldtrich Horror
//
//  Created by  Denis on 11.05.2021.
//

import Foundation

struct Detective {
    let name : String
    let job : String
    let action : String //Change
    let passive : String //Change
    
    let knowledge : Int
    let communication : Int
    let attention : Int
    let strength : Int
    let will : Int
    
    let maxHealth : Int
    let maxBrain : Int
    
    let inventory : [Int] //Change
    let position : String // Change
}
