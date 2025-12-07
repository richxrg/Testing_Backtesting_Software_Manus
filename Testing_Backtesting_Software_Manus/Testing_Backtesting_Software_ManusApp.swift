//
//  Testing_Backtesting_Software_ManusApp.swift
//  Testing_Backtesting_Software_Manus
//
//  Created by Richard Gordon on 07/12/2025.
//

import SwiftUI
import SwiftData

@main
struct Testing_Backtesting_Software_ManusApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
