//
//  CountTimerModel.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 19.07.2022.
//

import Foundation

class CountTimerModel: ObservableObject {
    @Published var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @Published var selectedHours = 0
    @Published var selectedMinutes = 0
    @Published var isRunning = false
    @Published var isComplete = false
}
