//
//  AddPostView.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/9/20.
//

import SwiftUI

struct AddPostView: View {
    
    @State var shouldShowActionSheet:Bool = true
    var body: some View {
        VStack{
            Text("Hello, Add Post View!")
                .sheet(isPresented: $shouldShowActionSheet) {
                    PicsPicker()
                }
        }
    }
}

struct AddPostView_Previews: PreviewProvider {
    static var previews: some View {
        AddPostView(shouldShowActionSheet: true)
    }
}
