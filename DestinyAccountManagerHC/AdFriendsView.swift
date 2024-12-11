//
//  AdFriendsView.swift
//  DestinyAccountManagerHC
//
//  Created by Jared Johnston on 2024-12-11.
//

import SwiftUI

struct AddFriendsView: View {
    @StateObject private var viewModel = AddFriendsViewModel() // ViewModel
    @State private var newFriendName: String = "" 
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.mint.opacity(0.7)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Add Friends")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                    .foregroundColor(.mint)
                
                List {
                    // Display current friends
                    ForEach(viewModel.friends) { friend in
                        Text(friend.name)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black.opacity(0.5))
                            .cornerRadius(10)
                    }
                    .onDelete(perform: viewModel.deleteFriend) // Allow friend deletion
                    
                    // Text field for entering new friend's name
                    HStack {
                        TextField("Enter friend's name", text: $newFriendName)
                            .padding(10)
                            .foregroundColor(.white)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(8)
                            .padding(.bottom, 10)
                        
                        Button(action: {
                            if !newFriendName.isEmpty {
                                viewModel.addFriend(name: newFriendName)
                                newFriendName = "" // Clear input field after adding
                            }
                        }) {
                            Text("Add Friend")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.mint)
                                .cornerRadius(8)
                        }
                        .disabled(newFriendName.isEmpty)
                    }
                }
                .listStyle(PlainListStyle())
                .background(Color.clear)
                
                Spacer()
            }
            .padding()
        }
    }
}


