//
//  ContentView.swift
//  ToDo
//
//  Created by silicagel on 2024/12/12.
//

import SwiftUI

struct ContentView: View {
    @State var inputText = ""
    @State var taskData : [(title: String, completed: Bool)] = []
    @State var isShowAlert = false
    var body: some View {
        NavigationStack {
            VStack {
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
            .navigationTitle("ToDoボード")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isShowAlert = true
                    } label: {
                        Image(systemName: "trash")
                            .foregroundColor(.gray)
                    }
                    .alert("完了タスク削除", isPresented: $isShowAlert) {
                        Button("キャンセル", role: .cancel) { }
                        Button("削除", role: .destructive) {
                            taskData.removeAll{ $0.completed }
                        }
                    } message: {
                        Text("完了済となっているタスクを全て削除しますが、よろしいですか？")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
