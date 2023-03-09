//
//  CategoryModel.swift
//  Grid
//
//  Created by iMac on 09.03.2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
