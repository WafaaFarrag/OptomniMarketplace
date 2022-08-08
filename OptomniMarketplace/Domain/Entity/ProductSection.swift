//
//  Menu.swift
//  iDine
//
//  Created by Paul Hudson on 27/06/2019.
//  Copyright © 2019 Hacking with Swift. All rights reserved.
//

import SwiftUI

struct ProductSection: Codable, Identifiable {
    var id: UUID
    var name: String
    var items: [Item]
}

struct Item: Codable, Equatable , Identifiable {
    var id: UUID
    var name: String
    var photoCredit: String
    var price: Int
    var owners: [String]
    var description: String
    
    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }
    
    var thumbnailImage: String {
        "\(mainImage)-thumb"
    }
    
    #if DEBUG
    static let example = Item(id: UUID(), name: "Maple French Toast", photoCredit: "Joseph Gonzalez", price: 6, owners: ["G", "V"], description: "Sweet, fluffy, and served piping hot, our French toast is flown in fresh every day from Maple City, Canada, which is where all maple syrup in the world comes from. And if you believe that, we have some land to sell you…")
    #endif
}
