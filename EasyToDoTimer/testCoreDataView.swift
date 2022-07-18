//
//  testCoreDataView.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 18.07.2022.
//

import SwiftUI
import CoreData

struct testCoreDataView: View {
    
    @State var name: String = ""
    @State var goalDay: Int = 0
    @State var isComplete: Bool = false
    @State var isRunning: Bool = false
    
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(entity: Timer.entity(), sortDescriptors: [NSSortDescriptor(key: "name", ascending: true)])
    private var timers: FetchedResults<Timer>
    let fetchRequest: NSFetchRequest<Timer> = Timer.fetchRequest()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

//struct testCoreDataView_Previews: PreviewProvider {
//    static var previews: some View {
//        testCoreDataView()
//    }
//}
