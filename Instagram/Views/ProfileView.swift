//
//  ProfileView.swift
//  Instagram
//
//  Created by Marc Jacques on 1/15/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                ProfileHeaderView()
                Spacer()
            }
            .navigationBarTitle("instaClone", displayMode: .inline)
        }
    }
}

struct ProfileHeaderView: View  {
    var body: some View {
        VStack {
            // user avatar & following counts
            HStack {
                Image("user\(Int.random(in: 1...4))")
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .frame(width: 120, height: 120, alignment: .center)
                    .cornerRadius(60)
                VStack {
                    HeaderCountButtonsView()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Edit Profile")
                            .foregroundColor(Color(.label))
                            .frame(width: 220, height: 44, alignment: .center)
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(8)
                    })
                }
            }
            //edit profile button
            
            //user bio
        }
    }
}

struct HeaderCountButtonsView: View {
    var body: some View {
        HStack {
            //  posts, followers, and following
            Button(action: {
                //nil
            }, label: {
                Text("3\nPosts")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            })
                .padding()
            Button(action: {
                //nil
            }, label: {
                Text("12k\nFollowers")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            })
                .padding()
            Button(action: {
                //nil
            }, label: {
                Text("350\nFollowing")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            })
                .padding()
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .preferredColorScheme(.dark)
    }
}
