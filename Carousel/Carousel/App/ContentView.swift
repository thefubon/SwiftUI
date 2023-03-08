//
//  ContentView.swift
//  Carousel
//
//  Created by iMac on 08.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(uiColor: .systemGray4)
                .ignoresSafeArea(.all)
            
            VStack {
                FeaturedTabView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Color(UIColor.systemGray4))
    }
}
