//
//  Character.swift
//  DestinyAccountManagerHC
//
//  Created by Daniel Pius on 2024-12-10.
//


import Foundation

struct Character: Identifiable {
    let id: UUID
    let name: String
    let classType: String
    let lightLevel: Int
    let loadout: [String]
}
