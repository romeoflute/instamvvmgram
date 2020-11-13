//
//  FeedView.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/9/20.
//  https://jsoneaday.com/2020/10/25/swiftui-2-0-instagram-clone/

import SwiftUI

struct FeedView: View {
    
    var body: some View {
        GeometryReader { geometry in
            let colwidth = geometry.size.width / 3
            NavigationView {
                ScrollView(showsIndicators: false) {
                    VStack {
                        NewsView()
                        StoriesView()
                        PostsView(colwidth: colwidth)
                    }
                    .padding(.top, 10)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                }
                .navigationBarTitle("InstaMVVM")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
