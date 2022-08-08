
//
//  OptomniMarketplaceApp.swift
//  OptomniMarketplace
//
//  Created by Expert on 04/08/2022.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel: ViewModel
    
    init() {
        _viewModel = StateObject(wrappedValue: ViewModel())
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.homeSections) { secion in
                    Section {
                        ForEach(secion.items) { item in
                            NavigationLink(destination: ItemDetailsView(viewModel: ItemDetailsViewModel(item: item))) {
                                HomePrpductRow(item: item)
                            }
                            
                        }
                    } header : {
                        Text(secion.name)
                            .font(.headline)
                            .shadow(radius: 20)
                    }
                }
                
            }.listStyle(.grouped)
                .navigationTitle("Home")
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
