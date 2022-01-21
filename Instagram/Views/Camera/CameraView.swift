//
//  CameraView.swift
//  Instagram
//
//  Created by Marc Jacques on 1/15/22.
//

import SwiftUI

struct CameraView: View {
    var image: Image? = nil
    var body: some View {
        NavigationView {
            VStack {
                image?
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 140, alignment: .center)
                
                Button(action: {
                    
                }, label: {
                    Text("Photo Library")
                })
            }
            .navigationTitle("Camera")
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
            .preferredColorScheme(.dark)
    }
}
