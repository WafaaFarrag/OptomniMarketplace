//
//  ChatHelper.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import Foundation
import Combine

class ChatHelper : ObservableObject {
    
    var didChange = PassthroughSubject<Void, Never>()
    @Published var realTimeMessages = ChatDataSource.messages
    
    func sendMessage(_ chatMessage: Message) {
        realTimeMessages.append(chatMessage)
        didChange.send(())
    }
}
