//
//  ContentView.swift
//  SwiftUI-CapturingPhotos
//
//  Created by Arpit Dixit on 01/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    
    var body: some View {
        VStack {
            
            image?
                .resizable()
                .scaledToFit()
            
            Button("Open Camera") {
                showImagePicker = true
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10.0)
        }
        .sheet(isPresented: $showImagePicker, content: {
            PhotoCaptureView(showImagePicker: $showImagePicker, image: $image)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
