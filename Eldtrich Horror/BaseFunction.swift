//
//  BaseFunction.swift
//  Eldtrich Horror
//
//  Created by  Denis on 13.05.2021.
//

import Foundation

func success(successNumbers : [Int], number : Int) -> result {
    if successNumbers.contains(number)
    {
        return result.success
    }
    else
    {
        return result.failure
    }
}

func dice() -> Int {
    return Int.random(in: 1..<7)
}


enum result {
    case success
    case failure
}
