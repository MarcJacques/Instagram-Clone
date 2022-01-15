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
                        .padding()
              
                    
                }
            }
            .navigationTitle("Instagram")
        }
    }
    
}
struct StoriesView: View  {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(0...10, id: \.self) { num in
                    StoryView(imageName: "foo")
                }
            }
        }
    }
}

struct StoryView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 90, height: 90, alignment: .center)
            .background(Color.blue)
            .cornerRadius(45)
            .padding(3)
    }
}

struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
    }
}
