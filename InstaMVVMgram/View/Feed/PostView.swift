//
//  PostView.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/13/20.
//

import SwiftUI

struct PostView: View {
    var post: Post
    var body: some View {
        HStack{
            Image(post.author.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:30)
                .padding(2)
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(Color.black, lineWidth: 2.0)
                )
            VStack(alignment:.leading){
                Text(post.author.name)
                    .font(.system(size: 12.0))
                Text("producejams - Original Audio")
                    .font(.system(size: 12.0))
            }
            Spacer()
            Text("...")
                .font(.system(size: 22.0))
                .padding(.trailing, 10)
        }
        .padding(.vertical, 8)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Post(author: User(name: "khey", image: "khey"), message: "Love of my life", image: "kheypost"))
    }
}
