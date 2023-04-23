//
//  CircularImageView.swift
//  HeroWidget
//
//  Created by Emir Türk on 5.04.2023.
//

import SwiftUI

struct CircularImageView: View {
    
    var image : Image
    
    var body: some View {
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black,lineWidth: 4))
            .shadow(radius: 20  )
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: Image("spiderman"))
    }
}
