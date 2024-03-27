//
//  PlaceItem.swift
//  testApp
//
//  Created by Orangeodc9 on 26/3/2024.
//

import Foundation

struct PlaceItem:Identifiable{
    let id = UUID()
    let name: String
    let distance: Double
    let kinds: [String]
}
