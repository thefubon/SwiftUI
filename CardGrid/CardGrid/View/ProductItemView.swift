//
//  ProductItemView.swift
//  CardGrid
//
//  Created by iMac on 09.03.2023.
//

import SwiftUI

struct ProductItemView: View {
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: STACK
            .background(Color(red: product.color[0], green: product.color[1], blue: product.color[2]))
            .cornerRadius(12)
            
            // NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.bold)
            
            // PRICE
            Text("₽\(product.price)")
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        } //: VSTACK
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(Color(uiColor: .systemGray6))
    }
}
