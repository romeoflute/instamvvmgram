//
//  PostFooter.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/13/20.
//

import SwiftUI

struct PostFooter: View {
    var body: some View {
        LazyVGrid(columns:[
            GridItem(.flexible(), alignment:.leading),
            GridItem(.flexible()),
            GridItem(.flexible(), alignment: .trailing),
        ]){
            HStack{
                Image(systemName:"heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:15)
                    .padding(.trailing, 10)
                    .foregroundColor(.gray)
                Image(systemName:"magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:15)
                    .padding(.trailing, 10)
                    .foregroundColor(.gray)
                Image(systemName:"paperplane")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:15)
                    .padding(.trailing, 10)
                    .foregroundColor(.gray)
            }
            Spacer()
            Image(systemName:"bookmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 10)
                .foregroundColor(.gray)
        }
    }
}

struct PostFooter_Previews: PreviewProvider {
    static var previews: some View {
        PostFooter()
    }
}
