//
//  HomeFeedView.swift
//  Instagram
//
//  Created by Marc Jacques on 1/15/22.
//

import SwiftUI

struct HomeFeedView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    StoriesView()
                    
                    ForEach(0...30, id: \.self) { num in
                        PostView()
                            .padding(.bottom, 20)
                    }
                }
            }
            .navigationTitle("Instagram")
        }
    }
}

struct PostView: View {
    var body: some View {
        VStack {
            PostHeaderView()
            .padding()
            
            Image("foo")
                .frame(width: 430, height: 430, alignment: .center)
                .background(Color(.secondarySystemBackground))
            
            PostActionButtonsView()
            
            HStack {
                // like count
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(Color.red)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30, alignment: .center)
                
                Text("32 Likes")
                    .font(.system(size: 20))
                    .foregroundColor(Color(.link))
                Spacer()
            }
            .padding()
            .padding(.top, -20)
            
            //Photo Caption
            Text("Hope 2022 is better than the last 2 years. #happynewyear")
                .font(.headline)
                .padding(.top, -15)
            
            HStack {
            Text("1 hour ago")
                .foregroundColor(Color(.secondaryLabel))
                .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.leading, 12)
        }
    }
}

struct PostHeaderView: View {
    var body: some View {
        HStack {
            // User image
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: .center)
                .foregroundColor(Color.blue)
            
            Text("MarcJacques")
                .foregroundColor(Color.blue)
                .bold()
            
            Spacer()
        }
    }
}

struct PostActionButtonsView: View {
    var body: some View {
        HStack {
            //buttons
            Button {
                // Like
            } label: {
                Image(systemName: "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(Color(.label))
            }
            .padding(.trailing, 10)
            
            Button {
                // Like
            } label: {
                Image(systemName: "message")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(Color(.label))
            }
            .padding(.trailing, 10)
            
            Button {
                // Like
            } label: {
                Image(systemName: "square.and.arrow.up")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(Color(.label))
            }
            
            Spacer()
            
        }
        .padding()
        
    }
}

struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeFeedView()
                .preferredColorScheme(.dark)
        }
    }
}
