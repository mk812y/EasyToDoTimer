//
//  EasyToDoTimerApp.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 10.07.2022.
//

import SwiftUI

@main
struct EasyToDoTimerApp: App {
    
    let persistenceController = PersistenceController.shared
    
    @StateObject private var model = ModelTimer()
    
    var body: some Scene {
        WindowGroup {
            ContentView(itemTimer: ModelTimer().itemsTimers[0])
                .environmentObject(model)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
