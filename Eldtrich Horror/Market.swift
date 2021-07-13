//
//  Market.swift
//  Eldtrich Horror
//
//  Created by Denys on 13.07.2021.
//

import Foundation

class Trader{
    var items : [String] // Change to Active
    var market = [String]() // Change to Active
    
    func addingItemIntoMarket(){
        while market.count<5{
            let item = items.remove(at: Int.random(in: 0..<items.count))
            market.append(item)
        }
    }
    
    func buyActive(){
        //TBD
    }
    
    init(items : [String]){
        self.items = items
    }
}

