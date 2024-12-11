//
//  CharacterViewModel.swift
//  DestinyAccountManagerHC
//
//  Created by Daniel Pius on 2024-12-10.
//


import Foundation

class CharacterViewModel: ObservableObject {
    @Published var characters: [Character] = [
        Character(
            id: UUID(),
            name: "Hunter",
            classType: "Nightstalker",
            lightLevel: 1350,
            loadout: ["Shadowshot", "Orpheus Rig", "Le Monarque"]
        ),
        Character(
            id: UUID(),
            name: "Titan",
            classType: "Sunbreaker",
            lightLevel: 1365,
            loadout: ["Hammer of Sol", "Phoenix Cradle", "Gjallarhorn"]
        ),
        Character(
            id: UUID(),
            name: "Warlock",
            classType: "Stormcaller",
            lightLevel: 1370,
            loadout: ["Arc Soul", "Crown of Tempests", "Riskrunner"]
        )
    ]
}

