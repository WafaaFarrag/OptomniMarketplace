//
//  ContentMessageView.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import SwiftUI

struct ContentMessageView: View {

    private var viewModel: ContentMessageViewModel
    
    init(viewModel: ContentMessageViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        Text(viewModel.contentMessage)
            .padding(10)
            .foregroundColor(viewModel.isCurrentUser ? Color.white : Color.black)
            .background(viewModel.isCurrentUser ? Color.blue : Color(UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)))
            .cornerRadius(10)
    }}

struct ContentMessageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            let contentMessageVM = ContentMessageViewModel(contentMessage: "hello", isCurrentUser: true)
             ContentMessageView(viewModel: contentMessageVM)
            
            let contentMessageVM2 = ContentMessageViewModel(contentMessage: "hello", isCurrentUser: false)
             ContentMessageView(viewModel: contentMessageVM2)
        }
 
    }
}
