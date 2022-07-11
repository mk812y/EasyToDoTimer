//
//  CircleButton.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 10.07.2022.
//

import SwiftUI

struct CircleButton: View {
    
    @EnvironmentObject private var model: ModelTimer
    
    enum ButtonStyle {
        case start
        case pause
        case complete
        
        var buttonTitle: String {
            switch self {
            case .start:
                return "Start"
            case .pause:
                return "Pause"
            case .complete:
                return "Complete"
            }
        }
        
        var buttonColor: Color {
            switch self {
            case .start:
                return Color(.systemBlue)
            case .pause:
                return Color(.systemOrange)
            case .complete:
                return Color(.systemGreen)
            }
        }
    }
    
    var style: ButtonStyle
    
    var body: some View {
        Button(action: {
            model.playPauseTimer()
        }) {
            ZStack {
                Circle()
                    .fill(style.buttonColor)
                    .overlay(
                        VStack {
                            Text("09:59:48")
                                .font(.title3)
                                .foregroundColor(Color.white)
                                .bold()
                                .padding([.bottom,.top], -1)
                            Text(style.buttonTitle)
                                .foregroundColor(.white)
                                .bold()
                            
                        }
                            .padding(.top)
                    )
                    .padding(1)
                Circle()
                    .fill(Color.clear)
                    .overlay(
                        Circle()
                            .stroke(Color(.secondarySystemBackground), lineWidth: 10)
                    )
                    .overlay(
                        Circle()
                            .trim(from: 0, to: 0.88)
                            .stroke(style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
                            .foregroundColor(Color.green)
                            .rotationEffect(.degrees(-90))
                    )
                    .padding(5)
                Circle()
                    .stroke(style.buttonColor, lineWidth: 1)
            }
        }
        .padding(5)
    }
}

struct CircleButton_Previews: PreviewProvider {
    static var previews: some View {
        CircleButton(style: .pause)
            .environmentObject(ModelTimer())
            .previewLayout(.fixed(width: 150, height: 150))
    }
}
