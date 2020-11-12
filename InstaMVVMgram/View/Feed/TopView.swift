//
//  TopView.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/12/20.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        HStack{
            Image(systemName: "flag.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                .font(.system(size: 12.0))
            Image(systemName: "xmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 12)
                .foregroundColor(.gray)
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
