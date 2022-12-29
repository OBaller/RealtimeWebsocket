//
//  ChatScreen.swift
//  WSChat
//
//  Created by Naseem Oyebola on 29/12/2022.
//

import SwiftUI

struct ChatScreen: View {
    // MARK: - Properties
    
    @State private var message = ""
    @StateObject private var model = ChatScreenModel()
    
    // MARK: - View
    
    var body: some View {
        VStack {
            // Chat history.
            ScrollView { // 1
                // Coming soon!
            }
            
            // Message field.
            HStack {
                TextField("Message", text: $message) // 2
                    .padding(10)
                    .background(Color.secondary.opacity(0.2))
                    .cornerRadius(5)
                
                Button(action: {}) { // 3
                    Image(systemName: "arrowshape.turn.up.right")
                        .font(.system(size: 20))
                }
                .padding()
                .disabled(message.isEmpty) // 4
            }
            .padding()
        }
        .onAppear {
            onAppear()
        }
        .onDisappear {
            onDisAppear()
        }
    }
    
    // MARK: - Methods
    
    private func onAppear() {
        model.connect()
    }
    
    private func onDisAppear() {
        model.disconnect()
    }
}


struct ChatScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChatScreen()
    }
}
