//
//  Constant.swift
//  CardGrid
//
//  Created by iMac on 09.03.2023.
//

import SwiftUI

// DATA

let products: [Product] = Bundle.main.decode("product.json")

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
 return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
