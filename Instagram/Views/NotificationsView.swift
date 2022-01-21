//
//  NotificationsView.swift
//  Instagram
//
//  Created by Marc Jacques on 1/15/22.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        NavigationView {
            VStack {
                List(0...30, id: \.self) { num in
                    NotificationFollowView()
                }
            }
            .navigationTitle("Notifications")
        }
    }
}

struct NotificationFollowView: View {
    var body: some View {
        HStack {
            //user image
            Image("user1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            
            //text, and date
            
            // follow button
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
            .preferredColorScheme(.dark)
    }
}
