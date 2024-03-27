//
//  testAppApp.swift
//  testApp
//
//  Created by Orangeodc9 on 26/3/2024.
//

import SwiftUI

@main
struct testAppApp: App {

    @StateObject var homeViewModel : HomeViewModel = HomeViewModel(placeMapper: PlaceMapper())
    var body: some Scene {
        WindowGroup {
            
            NavigationStack {
                HomeView()

            }.environmentObject(self.homeViewModel)
        }
    }
}
