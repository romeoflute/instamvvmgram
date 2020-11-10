//
//  TabItemViewModel.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/10/20.
//

import SwiftUI

struct TabItemViewModel: Hashable {
    let imageName:String
    let title:String
    let type: TabItemType
    
    enum TabItemType {
        case feed
        case search
        case addPost
        case notifications
        case profile
    }
}

