//
//  LibrarieDummyImpl.swift
//  Plouyoust
//
//  Created by Florentin on 17/10/2025.
//

import Foundation

class LibrairieDummyImpl : LibrairieRepository {
    
    @Published var song = [
        Song(title : "Bal de chair", album: "MEMENTO", artist: "THEA", time: 196, image: "/image"),
        Song(title : "Enfant doué.e", album: "MEMENTO", artist: "THEA", time: 296, image: "/image"),
        Song(title : "Guillotine", album: "MEMENTO", artist: "THEA", time: 235, image: "/image"),
        Song(title : "Zizicoptere", album: "J'emmerde les bobos !", artist: "Sebastien Patoche", time: 168, image: "/image"),
        Song(title : "Bout de bois", album: "Maison", artist: "Salut c'est moi", time: 300, image: "/image"),
        Song(title : "Zouzou", album: "Zouzou", artist: "Philippe katerine", time: 226, image: "/image"),
    ]
    
}
