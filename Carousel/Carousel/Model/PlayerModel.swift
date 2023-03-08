//
//  PlayerModel.swift
//  Carousel
//
//  Created by iMac on 08.03.2023.
//

import Foundation

struct Player: Codable, Identifiable {
    let id: Int
    let image: String
    let title: String
}
