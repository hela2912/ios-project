//
//  GetAllPlacesStates.swift
//  testApp
//
//  Created by Orangeodc9 on 27/3/2024.
//

import Foundation

enum getAllPlacesStates {
    case loading
    case success([PlaceItem])
    case error(String)
}
