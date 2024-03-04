//
//  ChatMessage.swift
//  Chat
//
//  Created by 木村朋広 on 2024/03/04.
//

import Foundation
struct ChatMessage: Identifiable {
    var id = UUID()
    var content: String
    var isMe: Bool
}
