//
//  ContentView.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 10.07.2022.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    
    
    @EnvironmentObject private var model: ModelLoadJSONTimer
    var itemTimer: ItemTimer
    
    var sss = Date()
    
    private let totalHours = 10
    
    let data: [DataItem] = [
        .init(day: "mo", value: 12),
        .init(day: "tu", value: 4),
        .init(day: "we", value: 10),
        .init(day: "th", value: 5),
        .init(day: "fr", value: 3),
        .init(day: "sa", value: 15),
        .init(day: "su", value: 91)
    ]
    
    var body: some View {
        testCoreDataView()
//        VStack {
//            TimerRow(itemTimer: itemTimer)
//            TimerRow(itemTimer: itemTimer)
//            TimerRow(itemTimer: itemTimer)
//            TimerRow(itemTimer: itemTimer)
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView(itemTimer: ModelLoadJSONTimer().itemsTimers[0])
            .environmentObject(ModelLoadJSONTimer())
    }
}

struct DataItem: Identifiable {
    let day: String
    let value: Double
    let id = UUID()
}
