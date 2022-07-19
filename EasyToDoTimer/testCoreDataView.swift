//
//  testCoreDataView.swift
//  EasyToDoTimer
//
//  Created by Михаил Куприянов on 18.07.2022.
//

import SwiftUI
import CoreData

import SwiftUI
import CoreData

struct testCoreDataView: View {
    
    @State var name: String = ""
    @State var date = Date()
    
//    let components = Calendar.current.dateComponents([.hour, .minute], from: date)
//    let hour = components.hour ?? 0
//    let minute = components.minute ?? 0
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(entity: Timers.entity(),
                  sortDescriptors: [NSSortDescriptor(key: "name", ascending: true)])
    private var timers: FetchedResults<Timers>
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("timer name", text: $name)
                DatePicker("please goal time day",
                           selection: $date,
                           displayedComponents: .hourAndMinute)
                    .labelsHidden()
                Text(Date.now.formatted(date: .long, time: .shortened))
        
                HStack {
                        Spacer()
                        Button("Add") {
                            addTimer()
                        }
                        Spacer()
                        Button("Clear") {
                            name = ""
                        }
                        Spacer()
                    }
                
                List {
                    ForEach(timers) { timer in
                        HStack {
                            Text(timer.name ?? "Not found")
                            
                            
                        }
                    }
                    .onDelete(perform: deleteTimers)
                }
                .navigationTitle("Timers")
            }
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
        }
    }
    
    private func addTimer() {
        
        withAnimation {
            let timer = Timers(context: viewContext)
            timer.name = name
            saveContext()
        }
    }
    
    private func deleteTimers(offsets: IndexSet) {
        withAnimation {
            offsets.map { timers[$0] }.forEach(viewContext.delete)
            saveContext()
        }
    }
    
    private func saveContext() {
        do {
            try viewContext.save()
        } catch {
            let error = error as NSError
            fatalError("An error occured: \(error)")
        }
    }
}

struct ResultsView: View {
    
    var name: String
    var viewContext: NSManagedObjectContext
    @State var matches: [Timers]?
    
    var body: some View {
        
        return VStack {
            List {
                
                ForEach(matches ?? []) { match in
                    HStack {
                        Text(match.name ?? "Not found")
                        
                    }
                }
            }
            .navigationTitle("Results")
            
        }
        .task {
            let fetchRequest: NSFetchRequest<Timers> = Timers.fetchRequest()
            
            fetchRequest.entity = Timers.entity()
            fetchRequest.predicate = NSPredicate(
                format: "name CONTAINS %@", name
            )
            matches = try? viewContext.fetch(fetchRequest)
        }
    }
}

struct testCoreDataView_Previews: PreviewProvider {
    static var previews: some View {
        testCoreDataView()
    }
}
