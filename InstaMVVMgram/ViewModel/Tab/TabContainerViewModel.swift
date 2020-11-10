//
//  TabContainerViewModel.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/10/20.
//

import Foundation

class TabContainerViewModel: ObservableObject {
    
    @Published var selectedTab: TabItemViewModel.TabItemType = .feed
    
    let tabItemViewModels:[TabItemViewModel] = [
        TabItemViewModel(imageName:"house.fill", title:"Feed", type: .feed),
        TabItemViewModel(imageName:"magnifyingglass.circle.fill", title:"Search", type: .search),
        TabItemViewModel(imageName:"plus.circle.fill", title:"Add Post", type: .addPost),
        TabItemViewModel(imageName:"heart.fill", title:"Notifications", type: .notifications),
        TabItemViewModel(imageName:"person.fill", title:"Profile", type: .profile),
    ]
}
