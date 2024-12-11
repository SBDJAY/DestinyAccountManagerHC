//
//  InventoryView.swift
//  DestinyAccountManagerHC
//
//  Created by Daniel Pius on 2024-12-10.
//


import SwiftUI

struct InventoryView: View {
    let items = [
        "Helmet: Celestial Nighthawk",
        "Gauntlets: Graviton Forfeit",
        "Chest: Ophidian Aspect",
        "Legs: Lion Rampant",
        "Weapon: Ace of Spades"
    ]
    
    var body: some View {
        List(items, id: \.self) { item in
            HStack {
                Image(systemName: "cube.box.fill")
                    .foregroundColor(.yellow)
                Text(item)
            }
            .padding()
        }
        .navigationTitle("Vault")
    }
}

#Preview {
    InventoryView()
}
