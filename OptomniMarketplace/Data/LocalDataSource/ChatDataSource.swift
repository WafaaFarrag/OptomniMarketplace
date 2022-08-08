//
//  ChatDataSource.swift
//  OptomniMarketplace
//
//  Created by Expert on 05/08/2022.
//

import Foundation

struct ChatDataSource {
    static let firstUser = User(name: "Maria Shadapova", avatar: "face.dashed")
    static var secondUser = User(name: "Duy Bui", avatar: "face.smiling.fill", isCurrentUser: true)
    static let messages = [
        Message(id: UUID(), content: "Hi, I really love your templates and I would like to buy the chat template", user: ChatDataSource.firstUser),
        Message(id: UUID(), content: "Thanks, nice to hear that, can I have your email please?", user: ChatDataSource.secondUser),
        Message(id: UUID(), content: "😇", user: ChatDataSource.firstUser),
        Message(id: UUID(), content: "Oh actually, I have just purchased the chat template, so please check your email, you might see my order", user: ChatDataSource.firstUser),
        Message(id: UUID(), content: "Great, wait me a sec, let me check", user: ChatDataSource.secondUser),
        Message(id: UUID(), content: "Sure", user: ChatDataSource.firstUser)
    ]
}
