//
//  Models.swift
//  DelivereeInternship
//
//  Created by Nurzhan Ababakirov on 8/3/23.
//

import Foundation

struct DishInfo: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    let dishType: String
    let rating: String
    let time: String
}

enum TabInfo: String, CaseIterable {
    case Home = "Home"
    case Wallet = "Wallet"
    case Chat = "Chat"
    case Profile = "Profile"
}

struct LocationInfo: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var category: String
    var address: String
}


