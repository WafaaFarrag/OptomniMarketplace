//
//  ItemRow.swift
//  IDine
//
//  Created by Expert on 03/08/2022.
//

import SwiftUI

struct HomePrpductRow: View {
    var item : Item
    
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
        }
        
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        HomePrpductRow(item: Item.example)
    }
}
