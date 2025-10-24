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
    ]
    
}
