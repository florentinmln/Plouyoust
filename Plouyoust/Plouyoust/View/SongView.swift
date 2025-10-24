//
//  SongView.swift
//  Plouyoust
//
//  Created by Florentin on 17/10/2025.
//

import SwiftUI

struct SongView: View {
    
    let song : Song
    
    var body: some View {
        HStack(spacing: 16) {
            Text(song.title)
                .lineLimit(1)
                .truncationMode(.tail)
                .frame(alignment: .leading)
            Text(song.album)
                .lineLimit(1)
                .truncationMode(.tail)
                .frame(alignment: .leading)
            Text(song.artist)
                .lineLimit(1)
                .truncationMode(.tail)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
            Text("\(song.time)")
        }
    }
    
    
}

#Preview(traits: .sizeThatFitsLayout) {
    SongView(song : Song(title : "Bal de chair", album: "MEMENTO", artist: "THEA", time: 196, image: "/image"))
}
