//
//  StoriesView.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/13/20.
//

import SwiftUI

struct StoriesView: View {
    let following: [User] = [
        User(name: "ammiel", image: "ammiel"),
        User(name: "aya", image: "aya"),
        User(name: "khey", image: "khey"),
        User(name: "kinah", image: "kinah"),
        User(name: "niel", image: "niel"),
        User(name: "sed", image: "sed"),
        User(name: "sophia", image: "sophia"),
        User(name: "yeshua", image: "yeshua")
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHStack{
                VStack {
                    Image(systemName: "person.crop.circle.badge.checkmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 65)
                        .foregroundColor(.gray)
                        .opacity(0.5)
                        .colorInvert()
                    
                    Text("Your Story")
                        .font(.system(size: 12.0))
                }
                .padding(.trailing, 12)
                ForEach(following, id:\.id){ user in
                    VStack {
                        Image(user.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 55)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .overlay(
                                Circle()
                                    .stroke(Color.black, lineWidth: 2)
                            )
                        
                        
                        Text(user.name)
                            .font(.system(size: 12.0))
                    }
                    .padding(.trailing, 12)
                }
            }
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView()
    }
}
