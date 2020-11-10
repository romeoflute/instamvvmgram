//
//  NotificationsView.swift
//  InstaMVVMgram
//
//  Created by Romeo Flauta on 11/9/20.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: Text("Second View")) {
                Text("Hello, Notifications!")
            }
            .navigationBarTitle("Activity")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
