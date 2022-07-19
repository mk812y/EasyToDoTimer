//
//  trash.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 10.07.2022.
//

import Foundation

//            ZStack {
//                ZStack {
//                    RoundedRectangle(cornerRadius: 20)
//                        .stroke(Color(UIColor.systemBlue), lineWidth: 2)
//                    RoundedRectangle(cornerRadius: 20)
//                        .fill(Color.white)
//                    HStack {
//                        VStack(alignment: .leading) {
//                            Text("Весёлая кучка")
//                                .font(.headline)
//                                .padding(EdgeInsets(top: 5, leading: 8, bottom: 0, trailing: 0))
//                            Chart {
//                                ForEach(data) { item in
//                                    BarMark(
//                                        x: .value("Day", item.day),
//                                        y: .value("Hour", item.value)
//                                    )
//                                    .foregroundStyle(
//                                        Int(item.value) >= totalHours ? .green : .orange
//                                    )
//                                }
//                            }
//                        }
//                        .foregroundColor(.black)
//                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: -10))
//                        Spacer()
//                        CircleButton(style: model.isRunning ? .pause : .start)
//                            .padding(5)
//                    }
//                }
//            }
//            .frame(width: nil, height: 150)
//            .padding(EdgeInsets(top: 0, leading: 10, bottom: 5, trailing: 10))

//,
//{
//  "id": 100002,
//  "name": "Весёлая ручка",
//  "days": [
//    {
//      "weekday": "monday",
//      "goal": 5,
//      "fact": 13
//    },
//    {
//      "weekday": "wednesday",
//      "goal": 2,
//      "fact": 4
//    },
//    {
//      "weekday": "thursday",
//      "goal": 0,
//      "fact": 13
//    },
//    {
//      "weekday": "saturday",
//      "goal": 12,
//      "fact": 7
//    }
//  ],
//  "isComplete": true,
//  "isRunning": false,
//  "description": "Многие думают"
//},
//{
//  "id": 100003,
//  "name": "Трамвайная ручка",
//  "days": [
//    {
//      "weekday": "tuesday",
//      "goal": 13,
//      "fact": 1
//    },
//    {
//      "weekday": "wednesday",
//      "goal": 5,
//      "fact": 5
//    },
//    {
//      "weekday": "thursday",
//      "goal": 0,
//      "fact": 4
//    },
//    {
//      "weekday": "saturday",
//      "goal": 6,
//      "fact": 7
//    },
//    {
//      "weekday": "sunday",
//      "goal": 0,
//      "fact": 0
//    }
//  ],
//  "isComplete": false,
//  "isRunning": true,
//  "description": "Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад."
//}


//                    .fill(Color(UIColor.secondarySystemBackground))?
//Image(systemName: "arrow.up.and.down")
//    .foregroundColor(.white)
//Spacer()

//                            .padding(EdgeInsets(top: -20, leading: 0, bottom: 0, trailing: -20))


//RoundedRectangle(cornerRadius: 20)
//    .stroke(Color(UIColor.systemGray5), lineWidth: 1)
//.padding([.top, .leading], 8)

//                            BarMark(
//                                x: .value("Tuesday", "tu"),
//                                y: .value("Value", 4)
//                            )
//                            .foregroundStyle(.black)
////    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
///    @State var currentDate = Date()
//@State var timeRemaining = 100


//@State private var date = Date()
//var body: some View {
//    DatePicker(
//    "Start Date",
//    selection: $date, in: ...Date(),
//    displayedComponents: [.date]
//)
//.datePickerStyle(.graphical)



//var closedRange: ClosedRange<Date> {
//    let twoDaysAgo = Calendar.current.date(byAdding: .day, value: -3, to: Date())!
//    let fiveDaysAgo = Calendar.current.date(byAdding: .day, value: -4, to: Date())!
//
//    return fiveDaysAgo...twoDaysAgo
//}
//var body: some View {
//DatePicker("Select event date and time", selection: $selectedDate, in: closedRange, displayedComponents: .date)

//                                                    .fontWeight(.black)

//ZStack {
//    ZStack {
//        RoundedRectangle(cornerRadius: 20)
//            .fill(Color.gray)
//        HStack {
//            VStack {
//                Text("name Timer")
//                Text("какое то описание таймера хренаймера")
//            }
//            .foregroundColor(.white)
//            Spacer()
//            Circle()
//                .stroke(Color.white, lineWidth: 8)
//                .padding()
//        }
//    }
//    HStack {
//        Spacer()
//        VStack {
//            ZStack {
//                
//                Image(systemName: "rectangle.and.pencil.and.ellipsis")
//                    .foregroundColor(.white)
//                //                            .font(.largeTitle)
//                //                        .padding([.top, .trailing], -20)
//                
//            }
//            Spacer()
//            Image(systemName: "ellipsis.rectangle")
//                .foregroundColor(.white)
//                .font(.largeTitle)
//                .padding([.bottom, .trailing], -20)
//        }
//    }
//}
//.frame(width: nil, height: 150)
//.padding()

//GeometryReader { geometry in
//.frame(width: geometry.size.width / 2.2, height: geometry.size.width / 2.2)


//Text("\(currentDate)")
//    .onReceive(timer) { input in
//        currentDate = input
//    }
