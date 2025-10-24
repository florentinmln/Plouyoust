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
    
//    var songTriees: [Binding<song>]{
//        let bindings: [Binding<song>] =librairie.song.indices.map{ index in
//            $libraries.song[index]
//        }
//        
//        return bindings.sorted { (}
//    }
    
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
            List($librairie.song) { $song in
                NavigationLink(destination: TitleView(song: $song)){
                    SongView(song: song)
                }
            }
            .navigationTitle("Librairie")
        }
    }
}

#Preview {
    PlaylistView()
}
