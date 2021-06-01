//
//  Portal.swift
//  Eldtrich Horror
//
//  Created by  Denis on 25.05.2021.
//

import Foundation

enum Omens
{
    case green
    case blue
    case red
}

struct Portal
{
    let position : Position
    let omen : Omens
}
