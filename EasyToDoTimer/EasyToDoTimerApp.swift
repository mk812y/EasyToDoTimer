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
    
    @StateObject private var model = ModelLoadJSONTimer()
    
    var body: some Scene {
        WindowGroup {
            ContentView(itemTimer: ModelLoadJSONTimer().itemsTimers[0])
                .environmentObject(model)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
