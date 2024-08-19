//
//  WorkoutListView.swift
//  DailyDefiance
//
//  Created by Joseph DeWeese on 8/18/24.
//

import SwiftUI
import SwiftData



struct WorkoutListView: View {
    @Environment(\.modelContext) private var context
    @Query private var workouts: [Workout]
    
    
    var body: some View {
        Group {
                  List{
                            ForEach(workouts) { workout in
                                NavigationLink {
                                    WorkoutEditView()
                                } label: {
                                    WorkoutCardView(workout: workout)
                                }
                            
                        }
                    }
                }
            }
        }
    

#Preview {
    let preview = Preview(Workout.self)
    preview.addExamples(Workout.sampleWorkouts)
    return NavigationStack {
        WorkoutListView()
    }
        .modelContainer(preview.container)
}
