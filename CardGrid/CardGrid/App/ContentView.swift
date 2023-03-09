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
            VStack {
                TitleView(title: "Hello")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
