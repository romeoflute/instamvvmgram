//
//  User.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/12/20.
//

import Foundation

struct User:Identifiable {
    var id: UUID = UUID()
    var name: String
    var image: String
    
}
