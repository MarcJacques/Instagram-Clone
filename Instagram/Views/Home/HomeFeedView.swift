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
            .padding()
            
            Image("foo")
                .frame(width: 430, height: 430, alignment: .center)
                .background(Color(.secondarySystemBackground))
           
            PostActionButtonsView()
            
            HStack {
                // like count
            }
            
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
