//
//  Model.swift
//  CardGrid
//
//  Created by iMac on 09.03.2023.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
}
