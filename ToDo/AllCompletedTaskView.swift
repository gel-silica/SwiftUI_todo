//
//  AllCompletedTaskView.swift
//  ToDo
//
//  Created by silicagel on 2024/12/15.
//

import SwiftUI

struct AllCompletedTaskView: View {
    @Binding var taskData: [(title: String, completed: Bool)]
    @State var checked: Bool = false

    var body: some View {
        Button {
            for index in taskData.indices {
                taskData[index].completed.toggle()
            }
        } label: {
            HStack {
                Image(systemName: "checkmark.circle.fill")
                Text("全てのタスクを完了にする")
                    .foregroundColor(.gray)
            }
        }
    }
}
