//
//  TimerRow.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 12.07.2022.
//

import SwiftUI
import Charts
import CoreData


struct GetDatesTimer {
    var dates: Timers
    var seconds: Timers
}


struct TimerRow: View {
    @EnvironmentObject private var model: ModelTimer
    var itemTimer: ItemTimer
    
    var body: some View {
        ZStack {
            ZStack {
                TimerRectangle()
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            textTimerName
                            ChartsView(itemTimer: itemTimer)
                        }
                        .padding([.leading, .bottom], 10)
                        Spacer()
                        HStack {
                            CircleButton(style: model.isRunning ? .pause : .start)
                                .padding(EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: -30))
                            VStack {
                                Image(systemName: "gearshape.circle.fill")
                                Spacer()
                                Image(systemName: "chevron.down.circle.fill")
                            }
                            .font(.largeTitle)
                        }
                        
                    }
                    
                }
            }
        }
        .frame(width: nil, height: 150)
        .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
    }
    
    var textTimerName: some View {
        Text("\(itemTimer.name)")
            .font(.headline)
            .padding(EdgeInsets(top: 5, leading: 8, bottom: 0, trailing: 0))
    }
}

struct TimerRow_Previews: PreviewProvider {
    static var previews: some View {
        TimerRow(itemTimer: ModelTimer().itemsTimers[0])
            .environmentObject(ModelTimer())
    }
}
