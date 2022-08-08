//
//  OrdersHistoryViewModel.swift
//  OptomniMarketplace
//
//  Created by Expert on 06/08/2022.
//

import Foundation
extension OrdersHistoryView {
    
    @MainActor class OrdersHistoryViewModel: ObservableObject {
        
      @Published private (set) var orders: [OrderHistoryItem] = Bundle.main.decode([OrderHistoryItem].self, from: "OrdersHistory.json")
     }
}

