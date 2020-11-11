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
                .onAppear(){
                    print("what is selectedTab? \(tabContainerViewModel.selectedTab)")
                    if tabContainerViewModel.selectedTab == .addPost {
                        shouldShowActionSheet = true
                    }
                }   
                .sheet(isPresented: $shouldShowActionSheet, onDismiss: {
                    // change back to previous tab selection
                    self.tabContainerViewModel.selectedTab = self.tabContainerViewModel.previousSelectedTab
                }) {
                    PicsPicker()
                }
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
 
