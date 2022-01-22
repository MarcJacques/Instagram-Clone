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
                    if num % 2 == 0 {
                        NotificationFollowView()
                    }
                    else {
                        NotificationLikeView()
                    }
                }
            }
            .navigationTitle("Notifications")
        }
    }
}
struct NotificationLikeView: View {
    var body: some View {
        HStack {
            //user image
            let userImageName = "user\(Int.random(in: 1...4))"
            Image(userImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            
            //text, and date
            VStack(alignment: .leading) {
                Text("Tim Cook liked your post.")
                Text("\(Int.random(in: 3...59)) minutes ago")
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            // Post
            let imageName = "Image \(Int.random(in: 1...4))"
            let image = Image(imageName)
            
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 44, height: 44, alignment: .center)
            NavigationLink(
                destination: PostView(userImageName: userImageName, imageName: imageName),
                label: {
                    Spacer()
                    image
                }
            )
                .frame(width: 44, height: 44, alignment: .center)
                .background(Color.red)
        }
    }
}

struct NotificationFollowView: View {
    var body: some View {
        HStack {
            //user image
            Image("user\(Int.random(in: 1...4))")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            
            //text, and date
            VStack(alignment: .leading) {
                Text("ThisGuy started following you.")
                Text("\(Int.random(in: 3...59)) minutes ago")
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            // follow button
            Button(action: {
                //do nothing
            }, label: {
                Text("Follow")
                    .frame(width: 80, height: 30, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color(.link))
                    .cornerRadius(8)
            })
        }
    }
}


struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
            .preferredColorScheme(.dark)
    }
}
