//
//  TabContainerView.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/10/20.
//  https://www.youtube.com/watch?v=SZj3CjMfT-8

import SwiftUI

struct TabContainerView: View {
    
    @StateObject private var tabContainerViewModel = TabContainerViewModel()
    
    @ViewBuilder
    func tabView(for tabItemType: TabItemViewModel.TabItemType) -> some View {
        switch tabItemType {
        case .feed:
            FeedView()
        case .search:
            SearchView()
        case .addPost:
            AddPostView(tabContainerViewModel: self.tabContainerViewModel)
        case .notifications:
            NotificationsView()
        case .profile:
            ProfileView()
        }
    }
    
    var body: some View {
        TabView(selection: $tabContainerViewModel.selectedTab){
            ForEach(tabContainerViewModel.tabItemViewModels, id: \.self){ viewModel in
                tabView(for: viewModel.type)
                    .tabItem {
                        Image(systemName: viewModel.imageName)
                        Text(viewModel.title)
                    }
                    .tag(viewModel.type)
            }
        }
        .accentColor(.primary)
    }
}

struct TabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        TabContainerView()
    }
}
