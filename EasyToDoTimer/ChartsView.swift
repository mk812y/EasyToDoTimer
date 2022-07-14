//
//  ChartsView.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 14.07.2022.
//

import SwiftUI
import Charts

struct ChartsView: View {
    var itemTimer: ItemTimer
    
    var body: some View {
        Chart {
            ForEach(itemTimer.days, id: \.self) { item in
                BarMark(
                    x: .value("Day", item.weekday),
                    y: .value("Hour", item.fact)
                )
                .foregroundStyle(item.fact >= item.goal ? .green: .orange)
                
            }
        }
    }
}

struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView(itemTimer: ModelTimer().itemsTimers[0])
    }
}
