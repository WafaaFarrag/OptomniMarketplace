//
//  ViewExtension.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import Foundation
import SwiftUI

extension View {
    
    func endEditing(_ force: Bool) {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
        
    }
    
}

