//
//  MessageView.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import SwiftUI

struct MessageView : View {
    
    private var viewModel: MessageViewModel
    
    init(viewModel: MessageViewModel) {
        self.viewModel = viewModel
    }
    var body: some View {
        HStack(alignment: .bottom, spacing: 15) {
            if !viewModel.currentMessage.user.isCurrentUser {
                Image(systemName: viewModel.currentMessage.user.avatar)
                .resizable()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
                .foregroundColor(.cyan)
            } else {
                Spacer()

            }
            let contentMessageVM = ContentMessageViewModel(contentMessage: viewModel.currentMessage.content, isCurrentUser: viewModel.currentMessage.user.isCurrentUser)
             ContentMessageView(viewModel: contentMessageVM)
        }.padding()
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = MessageViewModel(currentMessage: Message(id: UUID(), content: "There are a lot of premium iOS templates on iosapptemplates.com", user: ChatDataSource.firstUser))
        MessageView(viewModel: viewModel)
        
    }
    

}
