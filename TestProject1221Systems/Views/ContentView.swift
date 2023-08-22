//
//  ContentView.swift
//  TestProject1221Systems
//
//  Created by Alibek Ismagulov on 21.08.2023.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Label("Главная", image: "logo-image")
                }
            CatalogueView()
                .tabItem {
                    Label("Каталог", systemImage: "square.grid.2x2")
                }
            CartView()
                .tabItem {
                    Label("Корзина", systemImage: "cart")
                }
            ProfileView()
                .tabItem {
                    Label("Профиль", systemImage: "person")
                }
        }
        .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
