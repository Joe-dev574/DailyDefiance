//
//  DailyDefianceApp.swift
//  DailyDefiance
//
//  Created by Joseph DeWeese on 8/18/24.
//

import SwiftUI
import SwiftData

@main
struct DailyDefianceApp: App {
    let container: ModelContainer
    var body: some Scene {
        WindowGroup {
            WorkoutListScreen()
        }
        .modelContainer(container)
    }
    
    init() {
        let schema = Schema([Workout.self])
        let config = ModelConfiguration("Workouts", schema: schema)
        do {
            container = try ModelContainer(for: schema, configurations: config)
        } catch {
            fatalError("Could not configure the container")
        }
        print(URL.applicationSupportDirectory.path(percentEncoded: false))

    }
}
