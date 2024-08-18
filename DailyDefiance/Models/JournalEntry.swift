//
//  JournalEntry.swift
//  DailyDefiance
//
//  Created by Joseph DeWeese on 8/18/24.
//

import Foundation


import Foundation
import SwiftData

@Model
class JournalEntry {
    var creationDate: Date = Date.now
    var text: String
    var page: String?
    
    init(text: String, page: String? = nil) {
        self.text = text
        self.page = page
    }
    
    var workout: Workout?
}
