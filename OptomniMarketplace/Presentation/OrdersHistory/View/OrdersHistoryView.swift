//
//  OrdersView.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import SwiftUI

struct OrdersHistoryView: View {
    
    @StateObject private var ordersHistoryViewModel: OrdersHistoryViewModel
    
    init() {
        _ordersHistoryViewModel = StateObject(wrappedValue: OrdersHistoryViewModel())
    }
    var body: some View {
        
        NavigationView {
            List {
                ForEach (ordersHistoryViewModel.orders) { item in
                    OrdersHistoryRow(item: item)
                }
            }.background(.clear)
                .listStyle(.grouped)
                .navigationTitle(Text("Orders History"))
        }
        
    }
}

struct OrdersView_Previews: PreviewProvider {
    static var previews: some View {
        OrdersHistoryView()
    }
}
