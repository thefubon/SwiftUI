//
//  ContentView.swift
//  OffcanvasMenu
//
//  Created by OGON on 10.03.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomePage: View {
    
    @Binding var x: CGFloat
    
    var body: some View {
        // Главный вид с пользовательской панелью навигации...
        VStack {
            HStack {
                Button(action: {
                    // Открытие меню...
                    withAnimation {
                        x = 0
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundColor(Color.blue)
                }
                
                Spacer(minLength: 0)
                
                Text("Fubon")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer(minLength: 0)
            }
            .padding()
            .background(Color.white)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
            
            Spacer()
        }
        // Для драг-жеста...
        .contentShape(Rectangle())
        .background(Color.white)
    }
}
