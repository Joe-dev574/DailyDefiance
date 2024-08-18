//
//  Workout.swift
//  DailyDefiance
//
//  Created by Joseph DeWeese on 8/18/24.
//

import SwiftUI
import SwiftData

@Model
class Workout {
    var title: String
    var briefDescription: String
    var dateStarting: Date
    var dateCompleted: Date
    var workoutType: WorkoutType.RawValue
    @Relationship(deleteRule: .cascade)
    var journalEntries: [JournalEntry]?
    @Relationship(deleteRule: .cascade)
    var exercises: [Exercise]?
    
    init(
        title: String,
        author: String,
        dateStarting: Date = Date.distantFuture,
        dateCompleted: Date = Date.distantPast,
        workoutType: WorkoutType = .CARDIO
    ) {
        self.title = title
        self.briefDescription = author
        self.dateStarting = dateStarting
        self.dateCompleted = dateCompleted
        self.workoutType = workoutType.rawValue
        
    }
    
    var icon: Image {
        switch WorkoutType(rawValue: workoutType)! {
        case .CARDIO:
            Image(systemName: "figure.mixed.cardio.circle")
        case .YOGA:
            Image(systemName: "figure.yoga.circle")
        case .CYCLING:
            Image(systemName: "figure.outdoor.cycle.circle")
        case .STRETCH:
            Image(systemName: "figure.flexibility.circle")
        case .BASE:
            Image(systemName: "figure.mixed.cardio.circle")
        case .GRAPPLING:
            Image(systemName: "figure.wrestling.circle")
        case .HIIT:
            Image(systemName: "figure.step.training.circle")
        case  .POWER:
            Image(systemName: "figure.strengthtraining.traditional.circle")
        case .RUNNING:
            Image(systemName: "figure.run.circle")
        case .SWIMMING:
            Image(systemName: "figure.pool.swim.circle")
        case .WALKING:
            Image(systemName: "figure.walk.circle")
        case .RECOVERY:
            Image(systemName: "figure.mind.and.body.circle")
        case .STRENGTH:
            Image(systemName: "figure.core.training.circle")
        case .NEW_PR:
            Image(systemName: "figure.core.training.circle")
        }
    }
}


    enum WorkoutType: Int, Codable, Identifiable, CaseIterable {
        case YOGA, CARDIO, CYCLING, STRETCH, BASE, GRAPPLING, HIIT, POWER, RUNNING, SWIMMING, WALKING, RECOVERY, STRENGTH, NEW_PR
        var id: Self {
            self
        }
        var descr: LocalizedStringResource {
            switch self {
            case .YOGA:
                "Yoga"
            case .STRENGTH:
                "Strength"
            case .STRETCH:
                "Stretch"
            case .WALKING:
                "Walking"
            case .CARDIO:
                "Cardio"
            case .POWER:
                "Power"
            case .GRAPPLING:
                "Grappling"
            case .HIIT:
                "HIIT"
            case .RUNNING:
                "Running"
            case .SWIMMING:
                "Swimming"
            case .CYCLING:
                "Cycling"
            case .NEW_PR:
                "New PR"
            case .BASE:
                "Base"
            case .RECOVERY:
                "Recovery"
            }
        }
    }

