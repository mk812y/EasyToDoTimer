//
//  ItemTimer.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 12.07.2022.
//

import Foundation
import SwiftUI

struct ItemTimer: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var isComplete: Bool
    var isRunning: Bool
    var description: String
    var days: [Days]
    
    struct Days: Hashable, Codable {
        var weekday: String
        var goal: Int
        var fact: Int
    }
}
