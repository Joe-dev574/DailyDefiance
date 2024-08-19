//
//  Exercise.swift
//  DailyDefiance
//
//  Created by Joseph DeWeese on 8/18/24.
//

import Foundation


import SwiftUI
import SwiftData

@Model
class Exercise {
    var name: String
    var color: String
    var workouts: [Workout]?
    
    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
    
    var hexColor: Color {
        Color(hex: self.color) ?? .red
    }
}
