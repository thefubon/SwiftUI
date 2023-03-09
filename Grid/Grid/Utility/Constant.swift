//
//  Constant.swift
//  Grid
//
//  Created by iMac on 09.03.2023.
//

import SwiftUI

// DATA

let categories: [Category] = Bundle.main.decode("category.json")

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
 return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
