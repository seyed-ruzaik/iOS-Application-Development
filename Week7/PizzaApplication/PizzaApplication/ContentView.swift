//
//  ContentView.swift
//  PizzaApplication
//
//  Created by Pubudu Mihiranga on 2023-03-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PizzaList()
                .tabItem {
                    Label("Pizza List", systemImage: "list.dash")
                }
            
            FavouritePizzaList()
                .tabItem {
                    Label("Favourites", systemImage: "star.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
