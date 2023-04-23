//
//  ContentView.swift
//  HeroWidget
//
//  Created by Emir Türk on 4.04.2023.
//

import SwiftUI
import WidgetKit

let heroArray = [wolverine,ironman,spiderman]

struct ContentView: View {
   
    @AppStorage("hero", store: UserDefaults(suiteName: "group.com.emirturk.HeroWidget"))
    var heroData : Data = Data()
    
    var body: some View {
        
        VStack {
            ForEach(heroArray) { hero in
            
                HeroView(hero: hero).onTapGesture {
                    saveToDefaults(hero: hero)
                }
            }
        }
        
    }
    
    func saveToDefaults(hero: Superhero) {
        if let heroData = try? JSONEncoder().encode(hero) {
            self.heroData = heroData
            WidgetCenter.shared.reloadAllTimelines()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
