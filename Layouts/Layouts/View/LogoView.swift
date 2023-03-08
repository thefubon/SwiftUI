//
//  LogoView.swift
//  Layouts
//
//  Created by iMac on 08.03.2023.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 8) {
            Text("Fubon".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("Square")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32, alignment: .center)
                .cornerRadius(4)
            
            Text("Design".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        } //: HSTACK
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
