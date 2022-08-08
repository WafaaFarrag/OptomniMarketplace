//
//  ChatView.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import SwiftUI

struct ChatView: View {
    
    @State private var typingMessage: String = ""
    @ObservedObject private var keyboard = KeyboardResponder()
    @EnvironmentObject var chatHelper: ChatHelper
    
    
    
    var body: some View {
        
        NavigationView {
            VStack {
                List {
                    ForEach(chatHelper.realTimeMessages, id: \.self) { msg in
                        MessageView(currentMessage: msg)
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
                .padding(.bottom, keyboard.currentHeight)
                .edgesIgnoringSafeArea(keyboard.currentHeight == 0.0 ? .leading: .bottom)
        }.onTapGesture {
            self.endEditing(true)
        }
    }
    
    func sendMessage() {
        chatHelper.sendMessage(Message(id: UUID(), content: typingMessage, user: ChatDataSource.secondUser))
        typingMessage = ""
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView().environmentObject(ChatHelper())
    }
}
