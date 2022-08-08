//
//  Message.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import Foundation

struct Message: Hashable {
    var id: UUID
    var content: String
    var user: User
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs: Message, rhs: Message) -> Bool {
        lhs.id == rhs.id
    }
}



