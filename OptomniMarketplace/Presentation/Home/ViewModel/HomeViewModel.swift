//
//  HomeViewModel.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import Foundation

extension HomeView {
    
    @MainActor class ViewModel: ObservableObject {
        
      @Published private (set) var homeSections: [ProductSection] = Bundle.main.decode([ProductSection].self, from: "HomeProducts.json")
        
     }
}
