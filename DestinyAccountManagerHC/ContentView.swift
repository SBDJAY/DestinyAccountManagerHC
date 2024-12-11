//
//  ContentView.swift
//  DestinyAccountManagerHC
//
//  Created by Daniel Pius on 2024-12-10.
//

import SwiftUI

struct ContentView: View {
    @State private var isAuthenticated = false
    
    var body: some View {
        Group {
            if isAuthenticated {
                MainTabView()
            } else {
                LoginView()
                    .onChange(of: isAuthenticated) { newValue in
                        isAuthenticated = newValue
                    }
            }
        }
    }
}


#Preview {
    ContentView()
}
