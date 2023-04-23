//
//  HeroView.swift
//  HeroWidget
//
//  Created by Emir Türk on 5.04.2023.
//

import SwiftUI

struct HeroView: View {
   
    let hero : Superhero
    
    var body: some View {
        
        HStack{
            CircularImageView(image: Image(hero.image))
                .frame(width: 100, height: 100, alignment: .center)
                .padding()
                Spacer()
            VStack{
                Text(hero.name)
                    .font(.title)
                Text(hero.realName)
            }.padding()
                Spacer()
            Spacer()
            Spacer()
            
        }.frame(width: UIScreen.main.bounds.width)
        
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView(hero: spiderman)
    }
}
