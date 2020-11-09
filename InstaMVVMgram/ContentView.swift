//
//  ContentView.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/9/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Feed")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            AddPostView()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                    Text("Add Post")
                }
            NotificationsView()
                .tabItem {
                    Image(systemName: "rectangle.fill.badge.checkmark")
                    Text("Notifications")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
