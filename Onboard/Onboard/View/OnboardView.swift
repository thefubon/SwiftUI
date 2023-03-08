//
//  OnboardView.swift
//  Onboard
//
//  Created by iMac on 08.03.2023.
//

import SwiftUI

struct OnboardView: View {
    
    var screenWidth = UIScreen.main.bounds.width
    @State var xOffset: CGFloat = 0
    @State var currentPage = 0
    var lastPage = data.count - 1
    var firstPage = 0
    @Namespace var namespace
    
    var body: some View {
        
        ZStack {
            GeometryReader { reader in
                HStack(spacing: 0) {
                    ForEach(data) { item in
                        ItemView(item: item)
                            .frame(width: screenWidth)
                    }
                }
                .offset(x: xOffset)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            onChanged(value: value)
                        })
                        .onEnded({ value in
                            onEnded(value: value)
                        })
                )
            }
            VStack(spacing: 20) {
                Spacer()
                
                
                ZStack {
                    if currentPage != lastPage {
                        HStack {
                            Button(action: {
                                currentPage = lastPage
                                withAnimation{
                                    xOffset = -screenWidth * CGFloat(currentPage)
                                }
                            }, label: {
                                Text("Пропустить")
                                    .frame(maxWidth: .infinity)
                                    .foregroundColor(.white)
                            })
                            Spacer()
                            
                            Button(action: {
                                currentPage += 1
                                withAnimation{
                                    xOffset = -screenWidth * CGFloat(currentPage)
                                }
                            }, label: {
                                HStack {
                                    Text("Следующий")
                                    Image(systemName: "arrow.right")
                                }
                                .font(.system(size: 17, weight: .bold))
                                .frame(maxWidth: .infinity)
                            })
                        }
                        .frame(height: 40)
                        .foregroundColor(.white)
                    } else {
                        Button(action: {}, label: {
                            Text("Приступить к работе")
                                .foregroundColor(.black)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity)
                                .frame(height: 60)
                                .background(Capsule().fill(Color.white))
                        })
                    }
                }
                .padding(.horizontal)
                
                ZStack {
                    HStack(spacing: 6) {
                        ForEach(0..<data.count + 1, id: \.self) { i in
                            Circle()
                                .frame(width: 6, height: 6)
                        }
                    }
                    .foregroundColor(.white)
                    
                    HStack(spacing: 6) {
                        ForEach(0..<data.count, id: \.self) { i in
                            if i == currentPage {
                                Capsule()
                                    .matchedGeometryEffect(id: "page", in: namespace)
                                    .frame(width: 18, height: 6)
                            } else {
                                Circle()
                                    .frame(width: 6, height: 6)
                            }
                        }
                        //.animation(.linear)
                        
                    }
                    .foregroundColor(.white)
                }
            }
        }
    }
    
    func onChanged(value: DragGesture.Value) {
        xOffset = value.translation.width - (screenWidth * CGFloat(currentPage))
    }
    func onEnded(value: DragGesture.Value) {
        if -value.translation.width > screenWidth / 2 && currentPage < lastPage {
            currentPage += 1
        } else {
            if value.translation.width > screenWidth / 2 && currentPage < firstPage {
                currentPage -= 1
            }
        }
        withAnimation{
            xOffset = -screenWidth * CGFloat(currentPage)
        }
    }
    
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}

struct ItemView: View {
    var item: Item
    
    var body: some View {
        
        ZStack {
            item.backgroundColor
                .ignoresSafeArea(.all, edges: .all)
            
            VStack(spacing: 20) {
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .padding()
                
                VStack(spacing: 15) {
                    Text(item.title)
                        .font(.system(size: 32, weight: .bold))
                        .animation(Animation.interpolatingSpring(stiffness: 40, damping: 8))
                        .multilineTextAlignment(.center)
                    
                    Text(item.subtitle)
                        .font(.system(size: 16, weight: .regular))
                        .animation(Animation.interpolatingSpring(stiffness: 40, damping: 8))
                        .multilineTextAlignment(.center)
                }
                .padding(.horizontal)
                Spacer()
            }
            .padding()
            .foregroundColor(.white)
        }
        
    }
}
