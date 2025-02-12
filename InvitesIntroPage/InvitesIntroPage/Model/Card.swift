//
//  Card.swift
//  InvitesIntroPage
//
//  Created by Jesus Antonio Gil on 12/2/25.
//

import SwiftUI


struct Card: Identifiable, Hashable {
    let id: String = UUID().uuidString
    let image: String
}


let cards: [Card] = [
    .init(image: "Invite1"),
    .init(image: "Invite2"),
    .init(image: "Invite3"),
    .init(image: "Invite4"),
    .init(image: "Invite5"),
    .init(image: "Invite6"),
    .init(image: "Invite7")
]
