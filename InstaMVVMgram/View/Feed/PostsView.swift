//
//  PostsView.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/13/20.
//

import SwiftUI


let ammiel = User(name: "ammiel", image: "ammiel")
let aya = User(name: "aya", image: "aya")
let khey = User(name: "khey", image: "khey")
let kinah = User(name: "kinah", image: "kinah")
let niel = User(name: "niel", image: "niel")
let sed = User(name: "sed", image: "sed")
let sophia = User(name: "sophia", image: "sophia")
let yeshua = User(name: "yeshua", image: "yeshua")

let posts: [Post] = [
    Post(author: ammiel, message: "Had a great time", image:"ammielpost" ),
    Post(author: aya, message: "Hi cute girl!", image:"ayapost" ),
    Post(author: khey, message: "The love of my life", image:"kheypost" ),
    Post(author: kinah, message: "Dreaming...", image:"kinahpost" ),
    Post(author: sophia, message: "The best of times...", image:"sophiapost" )
]

struct PostsView: View {
    let colwidth: CGFloat
    var body: some View {
        
        LazyVStack(alignment: .leading){
            ForEach(posts, id:\.id){ post in
                PostView(post: post)
                Image(post.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                PostFooter()
            }
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView(colwidth: 15.0)
    }
}
