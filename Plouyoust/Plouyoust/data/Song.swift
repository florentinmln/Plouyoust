//
//  Product.swift
//  Plouyoust
//
//  Created by Florentin on 17/10/2025.
//

import Foundation

struct Song : Identifiable{
    let id = UUID()
    var title : String
    var album : String
    var artist : String
    var time : Int
    var image : String
}
