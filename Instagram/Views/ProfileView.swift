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
                Image("Image \(Int.random(in: 1...4))")
                    .resizable()
                    .aspectRatio( contentMode: .fill)
                    .frame(width: 40, height: 40, alignment: .center)
            }
            //edit profile button
            //user bio
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .preferredColorScheme(.dark)
    }
}
