//
//  MaketplaceRow.swift
//  OptomniMarketplace
//
//  Created by Expert on 04/08/2022.
//

import SwiftUI


struct MarketplaceRow: View {
    var item : Item
    let colors: [String: Color] = [ "Carrefour": .red, "Hyper": .blue, "Dina Farms": .green]
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(.gray, lineWidth: 2.0))
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }
            Spacer()
            ForEach (item.owners, id: \.self) { restriction in
                Text(restriction)
                    .padding(5)
                    .background(colors[restriction, default: .black] )
                    .cornerRadius(2)
                    .foregroundColor(.white)
                    .font(.caption)
                    
                
            }
        }

        

    }
}

struct MarketplaceRow_Previews: PreviewProvider {
    static var previews: some View {
        HomePrpductRow(item: Item.example)
    }
}

