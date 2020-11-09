//
//  ContentView.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/9/20.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab){
            FeedView()
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                }
                .tag(0)
            SearchView()
                .tabItem {
                    Image(systemName: selectedTab == 1 ? "magnifyingglass.circle.fill" : "magnifyingglass.circle")
                }
                .tag(1)
            AddPostView()
                .tabItem {
                    Image(systemName: selectedTab == 2 ? "plus.circle.fill" : "plus.circle" )
                }
                .tag(2)
            NotificationsView()
                .tabItem {
                    Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                }
                .tag(3)
            ProfileView()
                .tabItem {
                    Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                }
                .tag(4)
        }
        .onAppear() {
            UITabBar.appearance().isTranslucent = true
            UITabBar.appearance().backgroundColor = .white
        }
        .accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
