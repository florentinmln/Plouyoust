//
//  PlaylistView.swift
//  Plouyoust
//
//  Created by Florentin on 20/10/2025.
//

import SwiftUI

struct PlaylistView: View {
    
    @StateObject var librairie = Injector.librairieRepository
    
    @State private var onlySongHaveTitle = false
    @State private var onlySongOfArtist = false
    @State private var sortByDuration = false
    
    var body: some View {
        VStack(spacing: 16) {
            HStack(spacing: 16){
                Text("Compose your playlist")
                    .bold(true)
                    .font(.title)
                    .frame(alignment: .leading)
            }
            HStack(spacing: 16){
                Text("Sort by").bold(true)
            }
            HStack(spacing: 16){
                Toggle(isOn: $onlySongHaveTitle) {
                    Text("Title")
                }
                Toggle(isOn: $onlySongOfArtist) {
                    Text("Artiste")
                }
                Toggle(isOn: $sortByDuration) {
                    Text("Duration")
                        .lineLimit(1)
                        .fixedSize()
                }
            }
            List(librairie.song){
                song in	
                SongView(song: song)
            }
        }
    }
}

#Preview {
    PlaylistView()
}
