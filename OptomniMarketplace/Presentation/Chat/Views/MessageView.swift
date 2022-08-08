//
//  MessageView.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import SwiftUI

struct MessageView : View {
    
    var currentMessage: Message
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 15) {
            if !currentMessage.user.isCurrentUser {
                Image(systemName: currentMessage.user.avatar)
                .resizable()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
                .foregroundColor(.cyan)
            } else {
                Spacer()

            }
            ContentMessageView(contentMessage: currentMessage.content,
                               isCurrentUser: currentMessage.user.isCurrentUser)
        }.padding()
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(currentMessage: Message(id: UUID(), content: "There are a lot of premium iOS templates on iosapptemplates.com", user: ChatDataSource.firstUser))
    }
    

}
