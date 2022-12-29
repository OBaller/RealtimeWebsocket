//
//  File.swift
//  
//
//  Created by Naseem Oyebola on 29/12/2022.
//

import Foundation

struct SubmittedChatMessage: Decodable {
    let message: String
}


struct ReceivingChatMessage: Encodable, Identifiable {
    let date = Date()
    let id = UUID()
    let message: String
}
