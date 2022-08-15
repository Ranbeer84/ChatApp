//
//  Message.swift
//  ChatApp
//
//  Created by RANBEER SINGH on 04/08/22.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
