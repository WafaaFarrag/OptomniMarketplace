//
//  OrderHistoryItem.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import Foundation

struct OrderHistoryItem: Codable, Equatable , Identifiable {
    var id: UUID
    var state: String
    var price: Int
    var date: String

    
    #if DEBUG
    static let example = OrderHistoryItem(id: UUID(), state: "Open", price: 2455, date: "27/03/19 09:03 pm")
    #endif
    
}
