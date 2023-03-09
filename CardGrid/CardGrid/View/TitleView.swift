//
//  TitleView.swift
//  CardGrid
//
//  Created by iMac on 09.03.2023.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        } //: HSTACK
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Fubon")
            .previewLayout(.sizeThatFits)
            .background(Color(UIColor.systemGray5))
    }
}
