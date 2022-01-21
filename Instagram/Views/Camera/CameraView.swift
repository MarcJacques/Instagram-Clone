//
//  CameraView.swift
//  Instagram
//
//  Created by Marc Jacques on 1/15/22.
//

import SwiftUI

struct CameraView: View {
    
    @State var isShowingPicker = false
    
    @State var image: Image? = nil
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 140, alignment: .center)
                    
                    Button(action: {
                        self.isShowingPicker.toggle()
                    }, label: {
                        Text("Photo Library")
                    })
                }
                
                if (isShowingPicker) {
                    CaptureView(isShown: $isShowingPicker,
                                image: $image)
                }
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
