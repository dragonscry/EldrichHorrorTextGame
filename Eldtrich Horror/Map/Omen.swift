//
//  Omen.swift
//  Eldtrich Horror
//
//  Created by  Denis on 01.06.2021.
//

import Foundation

struct Omen {
    let omens = [Omens.green, Omens.blue, Omens.red, Omens.blue]
    var index = 0
    var countIndex : Int{
        get{
            return index
        }
        set{
            if newValue > omens.count-1
            {
                index = 0
            }
            else{
                index = newValue
            }
        }
    }
    func activeOmen()->Omens{
        return omens[index]
    }
}
