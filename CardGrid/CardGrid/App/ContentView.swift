//
//  ContentView.swift
//  CardGrid
//
//  Created by iMac on 09.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 0) {
                TitleView(title: "Hello")
                
                LazyVGrid(columns: gridLayout, spacing: 15) {
                    ForEach(products) { product in
                        ProductItemView(product: product)
                    }
                }
                .padding(15)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
