//
//  ModelTimer.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 11.07.2022.
//

import SwiftUI

class ModelTimer: ObservableObject {
    
    // MARK: - Publishers
    
    @Published var isRunning = false
    
    // MARK: - Methods
    
    func playPauseTimer() {
        isRunning.toggle()
    }
}
