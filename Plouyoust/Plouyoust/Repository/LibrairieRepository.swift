//
//  Librairie.swift
//  Plouyoust
//
//  Created by Florentin on 17/10/2025.
//

import Foundation

protocol LibrairieRepository: ObservableObject{
    var song: [Song] { get }
}
