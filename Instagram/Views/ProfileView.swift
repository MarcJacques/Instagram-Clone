//
//  ProfileView.swift
//  Instagram
//
//  Created by Marc Jacques on 1/15/22.
//

import SwiftUI

struct ProfileView: View {
    
    var columns: [GridItem] = [
        GridItem(.fixed(150)),
        GridItem(.fixed(150)),
        GridItem(.fixed(150))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ProfileHeaderView()
                    .padding()
                
                LazyVGrid(columns: columns, alignment: .center, spacing: 0, pinnedViews: [.sectionHeaders], content: {
                    
                    Section {
                        LazyVGrid(columns: columns, content: {
                            ForEach(0...90, id: \.self) { num in
                                let imageName = "Image \(Int.random(in: 1...4))"
                                Image(imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            }
                        })
                    }
                })
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
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(50)
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
            //user bio
            HStack {
                Text("On a journey to learn Swift.\nAlso SwiftUI is really cool!")
                    .multilineTextAlignment(.leading)
                Spacer()
            }
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
                .padding(5)
            Button(action: {
                //nil
            }, label: {
                Text("350\nFollowing")
                    .foregroundColor(Color(.label))
                    .multilineTextAlignment(.center)
            })
                .padding(5)
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .preferredColorScheme(.dark)
    }
}
