//
//  PlouyoustApp.swift
//  Plouyoust
//
//  Created by Florentin on 17/10/2025.
//

import SwiftUI

@main
struct PlouyoustApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView()	
            TitleView(song : .constant(Song(title : "Bal de chair", album: "MEMENTO", artist: "THEA", time: 196, image: "/image")))
        }
    }
}
