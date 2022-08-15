//
//  MessageFied.swift
//  ChatApp
//
//  Created by RANBEER SINGH on 04/08/22.
//

import SwiftUI

struct MessageFied: View {
    @EnvironmentObject var messagesManager: MessagesManager
    @State private var message = " "
   
    
    var body: some View {
        HStack {
            CustomTextField(placeholder: Text("Enter your message here"), text: $message)
                .frame(height: 52)
                .disableAutocorrection(true)
            
            Button {
                messagesManager.sendMessage(text: message)
                message = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color("Peach"))
                    .cornerRadius(50)

            }
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
        .background(Color("Gray"))
        .cornerRadius(50)
        .padding()
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 10, y: 10)
        
    }
}

struct MessageFied_Previews: PreviewProvider {
    static var previews: some View {
        MessageFied()
            .environmentObject(MessagesManager())
    }
}

struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool) -> () = { _ in}
    var commit: () -> () = {}
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .opacity(0.5)
            }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
        
    }
    
}
