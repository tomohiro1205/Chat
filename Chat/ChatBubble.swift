//
//  ChatBubble.swift
//  Chat
//
//  Created by 木村朋広 on 2024/03/04.
//

import Foundation
import SwiftUI

struct ChatBubble: View {
    var message: ChatMessage

    var body: some View {
        Group {
            if message.isMe {
                HStack {
                    Spacer()
                    VStack(alignment: .trailing, spacing: 2) {
                        Text(message.content)
                            .padding(12)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        Text("Sent: \(getMessageSentTime())")
                            .font(.system(size: 8, weight: .medium))
                    }
                }
            } else {
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        Text("John")
                            .font(.system(size: 12, weight: .medium))
                        Text(message.content)
                            .padding(12)
                            .background(Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Spacer()
                }
            }
        }
    }

    private func getMessageSentTime() -> String {
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter.string(from: date as Date)
    }

}
