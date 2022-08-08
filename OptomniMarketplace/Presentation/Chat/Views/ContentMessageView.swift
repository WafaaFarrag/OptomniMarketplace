//
//  ContentMessageView.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import SwiftUI

struct ContentMessageView: View {
    
    var contentMessage: String
    var isCurrentUser: Bool
    
    var body: some View {
        Text(contentMessage)
            .padding(10)
            .foregroundColor(isCurrentUser ? Color.white : Color.black)
            .background(isCurrentUser ? Color.blue : Color(UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1.0)))
            .cornerRadius(10)
    }}

struct ContentMessageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentMessageView(contentMessage: "hello from test", isCurrentUser: true)
            ContentMessageView(contentMessage: "hello from test", isCurrentUser: false)
        }
 
    }
}
