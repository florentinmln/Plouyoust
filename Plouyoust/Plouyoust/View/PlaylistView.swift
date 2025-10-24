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
    @State var selectedChoice: Choice = .title
    
    var songTriees: [Binding<Song>]{
        let bindings: [Binding<Song>] = librairie.song.indices.map{ index in
            $librairie.song[index]
        }
        
        return bindings.sorted { (a: Binding<Song>, b: Binding<Song>) in
            switch selectedChoice {
            case .title:
                return a.wrappedValue.title.lowercased() < b.wrappedValue.title.lowercased()
            case .artist:
                return a.wrappedValue.artist.lowercased() < b.wrappedValue.artist.lowercased()
            case .duration:
                return a.wrappedValue.time < b.wrappedValue.time
            }}
    }
    
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
            Picker("Choice", selection: $selectedChoice) {
                ForEach(Choice.allCases) { choice in
                    Text(choice.rawValue.capitalized)
                }
            }
            .pickerStyle(.segmented)
            List {
                ForEach(songTriees){ $song in
                    NavigationLink(destination: TitleView(song: $song)){
                        SongView(song: song)
                    }
                }
            }
        }.navigationTitle("Librairie")
    }
}
