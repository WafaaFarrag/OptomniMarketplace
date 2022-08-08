//
//  PaymentTypes.swift
//  OptomniMarketplace
//
//  Created by Expert on 06/08/2022.
//

import Foundation
import SwiftUI

enum PaymentTypes: String, CaseIterable {
    case Cash
    case Credit = "Credit Card"
    case iDine  = "iDine Points"
    
    var localizedName: LocalizedStringKey { LocalizedStringKey(rawValue) }
}
