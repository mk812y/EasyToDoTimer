//
//  trash.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 10.07.2022.
//

import Foundation

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
