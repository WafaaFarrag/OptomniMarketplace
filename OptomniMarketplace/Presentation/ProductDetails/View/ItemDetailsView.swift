//
//  ItemDetail.swift
//  IDine
//
//  Created by Expert on 03/08/2022.
//

import SwiftUI

struct ItemDetailsView: View {
    
    let viewModel: ItemDetailsViewModel
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing){
                Image(viewModel.item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text(viewModel.item.owners.joined(separator: ", "))
                    .padding(8)
                    .background(.cyan)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -8, y: -8)
                    
            }
            
            Text(viewModel.item.description)
                .padding()
            
            Button("Add me to your order") {
                order.add(item: viewModel.item)
            }.font(.subheadline)
                .padding()
                .background(.cyan)
                .foregroundColor(.white)
                .shadow(radius: 5.0)
                .cornerRadius(8.0)
            
            Spacer()
        }
        .navigationTitle(viewModel.item.name)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            let viewModel = ItemDetailsViewModel(item: Item.example)
            ItemDetailsView(viewModel: viewModel)
                .environmentObject(Order())
            
        }
        
    }
}
