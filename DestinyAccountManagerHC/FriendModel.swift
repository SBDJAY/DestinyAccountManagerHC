//
//  FriendModel.swift
//  DestinyAccountManagerHC
//
//  Created by Jared Johnston on 2024-12-11.
//

import Foundation

struct Friend: Identifiable, Codable {
    let id = UUID()
    let name: String
}


