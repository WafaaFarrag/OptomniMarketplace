//
//  OrdersRow.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import SwiftUI

struct OrdersHistoryRow: View {
    var item: OrderHistoryItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("State: \(item.state)")
                Text("Price: \(item.price)$")
            }
            
            Spacer()
            
            VStack(alignment: .center) {
                Text("Order Date:")
                Text("\(item.date)")
            }
            
        }.padding(20)
            .font(.subheadline)
            .foregroundColor(.primary)
            .background(.secondary).opacity(0.5)
            .cornerRadius(8)
            .shadow(radius: CGFloat(5.0))
            
            
            

    }
}

struct OrdersRow_Previews: PreviewProvider {
    static var previews: some View {
        OrdersHistoryRow(item: OrderHistoryItem.example)
    }
}
