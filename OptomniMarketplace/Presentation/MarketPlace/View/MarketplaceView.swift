//
//  MarketplaceView.swift
//  OptomniMarketplace
//
//  Created by Expert on 04/08/2022.
//

import SwiftUI

struct MarketplaceView: View {
    
    @StateObject private var viewModel: ViewModel
    
    init() {
        _viewModel = StateObject(wrappedValue: ViewModel())
    }
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(viewModel.allProducts) { product in
                    NavigationLink(destination: ItemDetailsView(viewModel: ItemDetailsViewModel(item: product))) {
                        
                        MarketplaceRow(item: product)
                    }
                }
            }.listStyle(.grouped)
                .navigationTitle("Marketplace")
        }
        
        
    }
}

struct MarketplaceView_Previews: PreviewProvider {
    static var previews: some View {
        MarketplaceView()
    }
}
