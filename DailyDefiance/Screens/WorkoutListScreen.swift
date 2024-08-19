//
//  WorkoutListScreen.swift
//  DailyDefiance
//
//  Created by Joseph DeWeese on 8/18/24.
//

import SwiftUI
import SwiftData



struct WorkoutListScreen: View {
    @Query var workouts: [Workout]
    @Environment(\.modelContext) private var context
    
    
    var body: some View {
        WorkoutListHeaderView()
        NavigationStack {
            List{
                ForEach(workouts) { workout in
                    WorkoutCardView(workout: workout)
                }
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
