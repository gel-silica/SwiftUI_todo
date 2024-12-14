//
//  TaskListView.swift
//  ToDo
//
//  Created by silicagel on 2024/12/15.
//

import SwiftUI

struct TaskListView: View {
    @Binding var taskData: [(title: String, completed: Bool)]

    var body: some View {
        List(0..<taskData.count, id: \.self) { index in
            Button {
                taskData[index].completed.toggle()
            } label: {
                HStack {
                    Image(systemName: taskData[index].completed ? "checkmark.circle.fill" : "circle")
                    Text(taskData[index].title)
                        .strikethrough(taskData[index].completed, color : .gray)
                        .foregroundColor(taskData[index].completed ? .gray : .primary)
                }
            }
            .foregroundColor(.primary)
        }
    }
}
