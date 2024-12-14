//
//  AddTaskView.swift
//  ToDo
//
//  Created by silicagel on 2024/12/15.
//

import SwiftUI

struct AddTaskView: View {
    @State var inputText = ""
    @Binding var taskData: [(title: String, completed: Bool)]
    
    var body: some View {
        HStack {
            TextField("ここにタスクを入力してください", text: $inputText)
            Button(action: {
                taskData.append((title: inputText, completed: false))
                inputText = ""
            }) {
                Image(systemName: "plus")
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}
