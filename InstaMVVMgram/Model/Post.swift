//
//  Post.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/13/20.
//

import Foundation

struct Post:Identifiable {
    var id: UUID = UUID()
    var author: User
    var message: String
    var image: String
}

