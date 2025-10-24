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
            NavigationStack{
                PlaylistView()
            }
        }
    }
}
