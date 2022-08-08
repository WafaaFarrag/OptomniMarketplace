//
//  MainView.swift
//  IDine
//
//  Created by Expert on 03/08/2022.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        
        TabView {
            HomeView().tabItem {
                Label("Home", systemImage: "house")
                
            }
            MarketplaceView().tabItem {
                Label("Marketplace", systemImage: "list.dash")
            }
            OrdersHistoryView().tabItem {
                Label("Orders", systemImage: "newspaper")
            }
            
            OrderView().tabItem {
                Label("Order", systemImage: "square.and.pencil")
            }
            
            ChatView().tabItem {
                Label("Chat", systemImage: "character.bubble")
            }
            
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(Order())
    }
}
