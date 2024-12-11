//
//  LoadoutView.swift
//  DestinyAccountManagerHC
//
//  Created by Daniel Pius on 2024-12-10.
//


import SwiftUI

struct LoadoutView: View {
    var body: some View {
        VStack {
            Text("Loadout Management")
                .font(.largeTitle)
                .padding()
            Spacer()
            Text("Feature Under Development")
                .foregroundColor(.secondary)
                .italic()
        }
        .navigationTitle("Loadout")
    }
}

#Preview {
    LoadoutView()
}
