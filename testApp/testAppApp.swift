//
//  testAppApp.swift
//  testApp
//
//  Created by Orangeodc9 on 26/3/2024.
//

import SwiftUI

@main
struct testAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
