//
//  ItemDetailsViewModel.swift
//  OptomniMarketplace
//
//  Created by Expert on 06/08/2022.
//

import Foundation
import SwiftUI

class ItemDetailsViewModel: ObservableObject {
    
    @Published var item: Item
    
    init(item: Item) {
        self.item = item
    }
    
}
