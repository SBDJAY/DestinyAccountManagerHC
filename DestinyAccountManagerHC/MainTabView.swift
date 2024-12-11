//
//  MainTabView.swift
//  DestinyAccountManagerHC
//
//  Created by Daniel Pius on 2024-12-10.
//


import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            CharacterListView()
                .tabItem {
                    Label("Characters", systemImage: "person.3.fill")
                }
            
            InventoryView()
                .tabItem {
                    Label("Inventory", systemImage: "cube.fill")
                }
            
            StatisticsView()
                .tabItem {
                    Label("Stats", systemImage: "chart.bar.fill")
                }
        }
        .accentColor(.yellow)
    }
}



#Preview {
    MainTabView()
}
