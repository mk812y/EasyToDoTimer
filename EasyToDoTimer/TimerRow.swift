//
//  TimerRow.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 12.07.2022.
//

import SwiftUI
import Charts

struct TimerRow: View {
    @EnvironmentObject private var model: ModelTimer
    var itemTimer: ItemTimer
    
    private let totalHours = 10
    
    let data: [DataItem] = [
        .init(day: "mo", value: 12),
        .init(day: "tu", value: 4),
        .init(day: "we", value: 10),
        .init(day: "th", value: 5),
        .init(day: "fr", value: 3),
        .init(day: "sa", value: 15),
        .init(day: "su", value: 9)
    ]
    
    var body: some View {
        ZStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(UIColor.systemBlue), lineWidth: 2)
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                HStack {
                    VStack(alignment: .leading) {
                        Text("Трамвайная ручка")
                            .font(.headline)
                            .padding(EdgeInsets(top: 5, leading: 8, bottom: 0, trailing: 0))
                        Chart {
                            ForEach(data) { item in
                                BarMark(
                                    x: .value("Day", item.day),
                                    y: .value("Hour", item.value)
                                )
                                .foregroundStyle(
                                    Int(item.value) >= totalHours ? .green : .orange
                                )
                            }
                        }
                    }
                    .foregroundColor(.black)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: -10))
                    Spacer()
                    CircleButton(style: model.isRunning ? .pause : .start)
                        .padding(5)
                }
            }
        }
        .frame(width: nil, height: 150)
    }
}

struct TimerRow_Previews: PreviewProvider {
    static var previews: some View {
        TimerRow(itemTimer: ModelTimer().itemsTimers[0])
            .environmentObject(ModelTimer())
    }
}
