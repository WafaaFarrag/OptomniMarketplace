//
//  CheckOutViewModel.swift
//  OptomniMarketplace
//
//  Created by Expert on 06/08/2022.
//

import Foundation

extension CheckoutView {
    
    @MainActor class CheckoutViewViewModel: ObservableObject {
        
        func calcTotalPrice(order: Order)-> String {
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            let total = Double(order.total)
            return formatter.string(from: NSNumber(value: total)) ?? "$0"
        }

        
     }
}
