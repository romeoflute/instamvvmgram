//
//  AddPostView.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/9/20.
//

import SwiftUI

struct AddPostView: View {
    @ObservedObject var tabContainerViewModel: TabContainerViewModel
    @State var shouldShowActionSheet:Bool = false
    var body: some View {
        VStack{
            Text("Hello, Add Post View!")
        }
        
    }
}
/*
struct AddPostView_Previews: PreviewProvider {
    static var previews: some View {
        AddPostView(tabContainerViewModel: tabContainerViewModel, shouldShowActionSheet: true)
    }
}
 */
 
