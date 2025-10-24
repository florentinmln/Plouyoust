//
//  Choice.swift
//  Plouyoust
//
//  Created by Florentin on 24/10/2025.
//

import Foundation

enum Choice: String, CaseIterable, Identifiable{
    case title, artist, duration
    var id: Self {self}
}
