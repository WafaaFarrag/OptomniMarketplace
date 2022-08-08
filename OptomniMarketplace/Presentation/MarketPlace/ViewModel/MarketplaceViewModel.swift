//
//  MarketplaceViewModel.swift
//  OptomniMarketplace
//
//  Created by Expert on 06/08/2022.
//

import Foundation

extension MarketplaceView {
    
    @MainActor class ViewModel: ObservableObject {
        @Published private (set) var allProducts: [Item] = Bundle.main.decode([Item].self, from: "Marketplace.json")
        
    }
}
