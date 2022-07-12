//
//  ItemTimer.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 12.07.2022.
//

import Foundation

struct ItemTimer: Codable {
    var id: Int
    var name: String
    var isComplete: Bool
    var isRunning: Bool
    var description: String
    
    
    struct Days {
        var weekday: String
        var goal: Int
        var fact: Int
    }
}

