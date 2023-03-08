//
//  FeaturedItemView.swift
//  Carousel
//
//  Created by iMac on 08.03.2023.
//

import SwiftUI

struct FeaturedItemView: View {
    
    let player: Player
    
    var body: some View {
        VStack {
            Image(player.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
                .padding(.top)
                .padding(.horizontal)
            
            HStack {
                Text(player.title)
                    
                
                Spacer()
                
                HStack(spacing: 3) {
                    ForEach(1...5, id: \.self) { i in
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 16)
                            .foregroundColor(.gray.opacity(0.3))
                    }
                }
            }
            .padding(.bottom)
            .padding(.horizontal)
        }
        .background(.white)
        .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color(UIColor.systemGray5))
    }
}
