//
//  SuperHero.swift
//  HeroWidget
//
//  Created by Emir Türk on 5.04.2023.
//

import Foundation


struct Superhero : Identifiable, Codable {
    let image : String
    let name : String
    let realName : String
    
    var id : String {image}
}

var ironman = Superhero(image: "ironman", name: "Iron Man", realName: "Tony Stark")
var wolverine = Superhero(image: "wolverine", name: "Wolverine", realName: "Logan")
var spiderman = Superhero(image: "spiderman", name: "Spiderman", realName: "Peter Parker")
