//
//  ContentView.swift
//  SearchBar
//
//  Created by iMac on 12.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    var columns = Array(repeating: GridItem(.flexible()), count: 2)
    @State var text = ""
    
    var body: some View {
        VStack(spacing: 0) {
            SearchBarView(text: $text)
                .padding(.horizontal)
                .padding(.bottom)
            
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(mData.filter({ "\($0)".contains(text.lowercased()) || text.isEmpty})) { i in
                        VStack {
                            Image(i.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 48)
                                .cornerRadius(4)
                            Text(i.title)
                            Text(i.subtitle)
                        }
                        .padding(.all, 25)
                        .background(Color(uiColor: .systemGray6))
                        .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyData: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
}

var mData = [
    MyData(title: "aaa", subtitle: "fubon", image: "Square"),
    MyData(title: "bbb", subtitle: "nuxt", image: "Square"),
    MyData(title: "ccc", subtitle: "next", image: "Square"),
    MyData(title: "ddd", subtitle: "js", image: "Square"),
    MyData(title: "fff", subtitle: "vector", image: "Square"),
    MyData(title: "ggg", subtitle: "vue", image: "Square")
]
