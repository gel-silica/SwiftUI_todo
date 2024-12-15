//
//  ContentView.swift
//  ToDo
//
//  Created by silicagel on 2024/12/12.
//

import SwiftUI

struct ContentView: View {
    @State var taskData : [(title: String, completed: Bool)] = []

    var body: some View {
        NavigationStack {
            VStack {
                AllCompletedTaskView(taskData: $taskData)
                TaskListView(taskData: $taskData)
                AddTaskView(taskData: $taskData)
            }
            .navigationTitle("ToDoボード")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    DeleteTaskView(taskData: $taskData)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
