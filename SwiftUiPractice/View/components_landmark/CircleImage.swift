//
//  CircleImage.swift
//  SwiftUiPractice
//
//  Created by Papon Supamongkonchai on 21/3/2564 BE.
//

import SwiftUI

struct CircleImage: View {
    var img : Image
    
    var body: some View {
        
        img
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(img: Image("turtlerock"))
    }
}
