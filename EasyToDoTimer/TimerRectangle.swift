//
//  TimerRectangle.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 14.07.2022.
//

import SwiftUI

struct TimerRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color(UIColor.systemBlue), lineWidth: 2)
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
    }
}

struct TimerRectangle_Previews: PreviewProvider {
    static var previews: some View {
        TimerRectangle()
    }
}
