//
//  OrderView.swift
//  IDine
//
//  Created by Expert on 03/08/2022.
//

import SwiftUI

struct OrderView: View {
    
    // I can't add it in viewModel because it can only be seen from the Views
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)").font(.largeTitle)
                        }
                        
                    }.onDelete(perform: delete)
                }
                Section {
                    NavigationLink(destination: CheckoutView()) {
                        Text("Complete your order")
                    }
                    
                }.disabled(order.items.isEmpty)
                
            }.navigationTitle("Order")
                .listStyle(.inset)
                .toolbar(content: {
                    EditButton()
                })
        }
    }
    
   private func delete(at offsets: IndexSet) {
        order.items.remove(atOffsets: offsets)
    }
    
    struct OrderView_Previews: PreviewProvider {
        static var previews: some View {
            OrderView().environmentObject(Order())
        }
    }
}
