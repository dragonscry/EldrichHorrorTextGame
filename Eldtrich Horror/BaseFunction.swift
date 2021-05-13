//
//  BaseFunction.swift
//  Eldtrich Horror
//
//  Created by  Denis on 13.05.2021.
//

import Foundation

func success(successNumbers : [Int], number : Int) -> String {
    if successNumbers.contains(number)
    {
        return "success"
    }
    else
    {
        return "failure"
    }
}

func dice() -> Int {
    return Int.random(in: 1..<7)
}
