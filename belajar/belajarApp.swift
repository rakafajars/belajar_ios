//
//  belajarApp.swift
//  belajar
//
//  Created by Raka Fajar on 30/05/23.
//

import SwiftUI

@main
struct belajarApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
