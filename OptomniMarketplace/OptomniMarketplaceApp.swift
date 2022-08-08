//
//  OptomniMarketplaceApp.swift
//  OptomniMarketplace
//
//  Created by Expert on 04/08/2022.
//

import SwiftUI

@main
struct OptomniMarketplaceApp: App {
    @StateObject var order = Order()
    var chatHelper = ChatViewModel()
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
                .environmentObject(chatHelper)
        }
    }
}
