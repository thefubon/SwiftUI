//
//  Home.swift
//  OffcanvasMenu
//
//  Created by OGON on 10.03.2023.
//

import SwiftUI

struct Home: View {
    
    // Для дальнейшего использования...
    @State var width = UIScreen.main.bounds.width - 90
    // Чтобы скрыть экран
    @State var x = -UIScreen.main.bounds.width + 90
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
            HomePage(x: $x)
            
            SlideMenu()
                .shadow(color: Color.black.opacity(x != 0 ? 0.1 : 0), radius: 5, x: 5, y: 0)
                .offset(x: x)
                .background(Color.black.opacity(x == 0 ? 0.5 : 0).ignoresSafeArea(.all, edges: .vertical).onTapGesture {
                    // Скрытие вида при нажатии кнопки Назад...
                    withAnimation {
                        x = -width
                    }
                })
            
            // Добавление функции жеста или перетаскивания
            .gesture(DragGesture().onChanged({ (value) in
                withAnimation {
                    if value.translation.width > 0 {
                        // Отключение перетаскивания...
                        
                        if x < 0 {
                            x = -width + value.translation.width
                        }
                    } else {
                        x = value.translation.width
                    }
                }
            }).onEnded({ (value) in
                withAnimation {
                    // Проверка перетаскивания половины значения меню означает установку x в 0...
                    if -x < width / 2 {
                        x = 0
                    } else {
                        x = -width
                    }
                }
            }))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct SlideMenu: View {
    
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    @State var show = true
    
    var body: some View {
        HStack(spacing: 0) {
            VStack(alignment: .leading) {
                Image("Square")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                
                HStack(alignment: .top, spacing: 12) {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Fubon")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Link(destination: URL(string: "www.fubon.ru")!, label: {
                            Text("www.fubon.ru")
                                .foregroundColor(.gray)
                        })
                        
                        // Счетчики...
                        
                        HStack(spacing: 20) {
                            FollowView(count: 8, title: "Follow")
                                .onTapGesture {
                                    
                                }
                            
                            FollowView(count: 3560, title: "Following")
                                .onTapGesture {
                                    // сделайте что-нибудь здесь...
                                }
                        } //: HSTACK
                        .padding(.top, 10)
                        
                        Divider()
                            .padding(.top, 10)
                    } //: VSTACK
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        withAnimation {
                            show.toggle()
                        }
                    }) {
                        Image(systemName: show ? "chevron.up" : "chevron.down")
                            .foregroundColor(.blue)
                    }
                }
                
                // Различный вид при нажатии кнопок вверх или вниз...
                
                VStack(alignment: .leading) {
                    // Кнопка меню...
                    ForEach(menuButtons, id: \.self) { menu in
                        Button(action: {
                            // Переключайте свои действия или работу в зависимости от названия...
                        }) {
                            menuButton(title: menu)
                        }
                    }
                    
                    Divider()
                        .padding(.top)
                    
                    Button(action: {}) {
                        menuButton(title: "Fubon Ads")
                    }
                    
                    Divider()
                    
                    Button(action: {}) {
                        Text("Settings and privacy")
                            .foregroundColor(.black)
                    }
                    .padding(.top)
                    
                    Button(action: {}) {
                        Text("Help centre")
                            .foregroundColor(.black)
                    }
                    .padding(.top, 10)
                    
                    Spacer(minLength: 0)
                    
                    Divider()
                        .padding(.bottom)
                    
                    HStack {
                        Button(action: {}) {
                            Image("Help")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 26, height: 26)
                                .foregroundColor(Color.blue)
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {}) {
                            Image("Barcode")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 26, height: 26)
                                .foregroundColor(Color.blue)
                        }
                    }
                }
                
                // Скрытие этого вида при нажатии стрелки вниз
                .opacity(show ? 1 : 0)
                .frame(height: show ? nil : 0)
                
                // Альтернативный вид для стрелки вверх...
                VStack(alignment: .leading) {
                    Button(action: {}) {
                        Text("Create a new account")
                            .foregroundColor(.blue)
                    }
                    .padding(.bottom)
                    
                    Button(action: {}) {
                        Text("Add an existing account")
                            .foregroundColor(.blue)
                    }
                }
                .opacity(show ? 0 : 1)
                .frame(height: show ? 0 : nil)
                
                Spacer(minLength: 0)
                
            } //: VSTACK
            .padding(.horizontal, 20)
            // Вертикальные края игнорируются...
            .padding(.top, edges!.top == 0 ? 15 : edges?.top)
            .padding(.bottom, edges!.bottom == 0 ? 15 : edges?.bottom)
            // Ширина по умолчанию...
            .frame(width: UIScreen.main.bounds.width - 90)
            .background(Color.white)
            .ignoresSafeArea(.all, edges: .vertical)
            
            Spacer(minLength: 0)
        }
    }
}

struct FollowView: View {
    
    var count: Int
    var title: String
    
    var body: some View {
        HStack {
            Text("\(count)")
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text(title)
                .foregroundColor(.gray)
        } //: HSTACK
    }
}

var menuButtons = ["Profile", "Lists", "Topics", "Bookmarks", "Moments"]

struct menuButton: View {
    
    var title: String
    
    var body: some View {
        HStack(spacing: 15) {
            // название и имя изображения одинаковые...
            Image(title)
                .resizable()
                .renderingMode(.template)
                .frame(width: 24, height: 24)
                .foregroundColor(.gray)
            
            Text(title)
                .foregroundColor(.black)
            
            Spacer(minLength: 0)
        }
        .padding(.vertical, 12)
    }
}
