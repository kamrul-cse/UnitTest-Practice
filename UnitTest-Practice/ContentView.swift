//
//  ContentView.swift
//  UnitTest-Practice
//
//  Created by Kamrul Hasan on 11/1/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State var tasks: [String] = []
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            TextField("Task Name", text: $name)
                .accessibility(identifier: "nameTextField")
                .textFieldStyle(.roundedBorder)
            
            Button {
                tasks.append(name)
            } label: {
                Text("Add Task")
            }
            .accessibility(identifier: "addTaskButton")
            
            List(tasks, id: \.self) { task in
                Text(task)
            }
            //.accessibility(identifier: "taskListTable")
        }
        .padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
