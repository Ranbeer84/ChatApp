//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by RANBEER SINGH on 04/08/22.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
