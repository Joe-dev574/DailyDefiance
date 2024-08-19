//
//  WorkoutCardView.swift
//  DailyDefiance
//
//  Created by Joseph DeWeese on 8/18/24.
//

import SwiftUI

struct WorkoutCardView: View {
    let workout: Workout
    var body: some View {
        HStack(spacing: 10) {
            workout.icon
            VStack(alignment: .leading) {
                Text(workout.title).font(.title2)
                Text(workout.briefDescription).foregroundStyle(.secondary)
            }
            
        }
    }
}
#Preview("English") {
    let preview = Preview(Workout.self)
    let workouts = Workout.sampleWorkouts
    preview.addExamples(workouts)
    return WorkoutListScreen()
        .modelContainer(preview.container)
}
