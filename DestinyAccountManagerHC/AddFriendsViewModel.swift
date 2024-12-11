//
//  AddFriendsViewModel.swift
//  DestinyAccountManagerHC
//
//  Created by Jared Johnston on 2024-12-11.
//

//https://www.kodeco.com/library?q=UserDefaults
import Foundation

class AddFriendsViewModel: ObservableObject {
    @Published var friends: [Friend] = []
    
    // Load friends from UserDefaults
    init() {
        loadFriends()
    }
    
    // Save friends to UserDefaults
    //Works After code stops 
    func saveFriends() {
        if let encoded = try? JSONEncoder().encode(friends) {
            UserDefaults.standard.set(encoded, forKey: "friendsList")
        }
    }
    
    // Load friends from UserDefaults
    func loadFriends() {
        if let savedFriends = UserDefaults.standard.object(forKey: "friendsList") as? Data {
            if let decodedFriends = try? JSONDecoder().decode([Friend].self, from: savedFriends) {
                friends = decodedFriends
            }
        }
    }
    
    // Add a new friend
    func addFriend(name: String) {
        let newFriend = Friend(name: name)
        friends.append(newFriend)
        saveFriends()
    }
    
    // Delete a friend from the list
    func deleteFriend(at offsets: IndexSet) {
        friends.remove(atOffsets: offsets)
        saveFriends()
    }
}
