//
//  CaptureView.swift
//  Instagram
//
//  Created by Marc Jacques on 1/20/22.
//

import SwiftUI
import Foundation

struct CaptureView: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIImagePickerController
    
    @Binding var isShown: Bool
    @Binding var image: Image?
    
    init(isShown: Binding<Bool>, image : Binding<Image?>) {
        _isShown = isShown
        _image = image
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShown: $isShown, image: $image)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureView>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        //do nothing
    }
}

class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
   
    @Binding var isShown: Bool
    @Binding var image: Image?
    
    init(isShown: Binding<Bool>, image: Binding<Image?>) {
        _isShown = isShown
        _image =  image
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        isShown = false
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        guard let uiimage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else  {
            return
        }
        image = Image(uiImage: uiimage)
        isShown = false
    }
}
