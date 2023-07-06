//
//  RectangleImage.swift
//  prueba
//
//  Created by Wiliam Ochoa on 06/07/23.
//

import SwiftUI

struct RectangleImage: View {
    var image: Image

    var body: some View {
        image
            .resizable()
            .clipShape(Rectangle())
            .overlay {
                Rectangle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct RectangleImage_Previews: PreviewProvider {
    static var previews: some View {
        RectangleImage(image: Image("1"))
    }
}
