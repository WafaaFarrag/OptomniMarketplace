//
//  ChatHelper.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import Foundation
import Combine
import SwiftUI

class ChatViewModel : ObservableObject {
    
    var didChange = PassthroughSubject<Void, Never>()
    @Published var realTimeMessages = ChatDataSource.messages
    @ObservedObject var keyboard = KeyboardResponder()
    
    func sendMessage(_ chatMessage: Message) {
        realTimeMessages.append(chatMessage)
        didChange.send(())
    }
}
