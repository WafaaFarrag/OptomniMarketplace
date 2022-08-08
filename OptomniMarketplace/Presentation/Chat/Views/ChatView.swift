//
//  ChatView.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import SwiftUI

struct ChatView: View {
    
    @State private var typingMessage: String = ""
    @EnvironmentObject var viewModel: ChatViewModel
    
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                ScrollView {
                    LazyVStack(alignment: .leading) {
                        ForEach(viewModel.realTimeMessages, id: \.self) { msg in
                            let viewModel = MessageViewModel(currentMessage: msg)
                            MessageView(viewModel: viewModel)
                        }
                    }
                }
                
                
                
                HStack {
                    TextField("Message...", text: $typingMessage)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(minHeight: CGFloat(30))
                    Button(action: sendMessage) {
                        Text("Send")
                    }
                }.frame(minHeight: CGFloat(50)).padding()
                
            }.navigationBarTitle(Text(ChatDataSource.firstUser.name), displayMode: .inline)
                .padding(.bottom, viewModel.keyboard.currentHeight)
                .edgesIgnoringSafeArea(viewModel.keyboard.currentHeight == 0.0 ? .leading: .bottom)
        }.onTapGesture {
            self.endEditing(true)
        }
    }
    
    private func sendMessage() {
        viewModel.sendMessage(Message(id: UUID(), content: typingMessage, user: ChatDataSource.secondUser))
        typingMessage = ""
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView().environmentObject(ChatViewModel())
    }
}
