//
//  FeedView.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/9/20.
//

import SwiftUI

struct FeedView: View {
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                VStack{
                    
                    ScrollView() {
                        VStack {
                            NewsView()
                            StoriesView()
                        }
                    }
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
