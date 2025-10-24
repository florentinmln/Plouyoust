//
//  Title.swift
//  Plouyoust
//
//  Created by Florentin on 20/10/2025.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.gray],
    startPoint: .top, endPoint: .bottom)

struct TitleView: View {
    
    let librairie = Injector.librairieRepository
    @Binding var song : Song
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Section(header: Text("Title").font(.headline)){
                TextField(
                    "Title",
                    text: $song.title
                )
            }
            Section(header: Text("Artist").font(.headline)){
                    TextField(
                        "Artist",
                        text: $song.artist
                    )
            }
            Section(header: Text("Album").font(.headline)){
                    TextField(
                        "Album",
                        text: $song.album
                    )
            }
            Section(header: Text("Time").font(.headline)){
                    TextField(
                        "Duration",
                        value: $song.time, 
                        format: .number
                    )
                    .keyboardType(.decimalPad)
            }
        }
        .navigationTitle(song.title)
        .frame(maxHeight: .infinity, alignment: .top)
        .padding()
        /*
        VStack(spacing: 20){
            VStack(spacing: 10){
                Text("Title")
                    .font(.system(size: 12, weight: .light))
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .frame(maxWidth: .infinity,
                        alignment: .leading)
                Text(song.title)
                    .bold(true)
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
            }
            .padding()
            .background(backgroundGradient)
            VStack(spacing: 10){
                Text("Artist")
                    .font(.system(size: 12, weight: .light))
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                Text(song.artist)
                    .bold(true)
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
            }
            .padding()
            .background(backgroundGradient)
            VStack(spacing: 10){
                Text("Album")
                    .font(.system(size: 12, weight: .light))
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                Text(song.album)
                    .bold(true)
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
            }
            .padding()
            .background(backgroundGradient)
            VStack(spacing: 10){
                Text("Duration")
                    .font(.system(size: 12, weight: .light))
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                Text("\(song.time)")
                    .bold(true)
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
            }
            .padding()
            .background(backgroundGradient)
            VStack(spacing: 10){
                Text("Timage")
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .frame(alignment: .leading)
            }
        }*/
    }
}

