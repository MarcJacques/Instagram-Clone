//
//  ContentView.swift
//  Instagram
//
//  Created by Marc Jacques on 1/15/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeFeedView()
                .tabItem {
                    Image(systemName: "house")
                    
                    Text("Home")
                }
            ExploreView()
                .tabItem {
                    Image(systemName: "safari")
                    
                    Text("Explore")
                }
            CameraView()
                .tabItem {
                    Image(systemName: "camera")
                    
                    Text("Camera")
                }
            NotificationsView()
                .tabItem {
                    Image(systemName: "bell")
                    
                    Text("Notification")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
