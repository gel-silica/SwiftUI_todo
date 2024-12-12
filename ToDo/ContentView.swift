//
//  ContentView.swift
//  ToDo
//
//  Created by silicagel on 2024/12/12.
//

import SwiftUI

struct ContentView: View {
    @State var taskData = [(title: "ジョギングする", completed: false),
                           (title: "本を読む", completed: false),
                           (title: "部屋の掃除", completed: false),
                           (title: "お花の水やり", completed: false)]
    var body: some View {
        NavigationStack {
            List(0..<taskData.count, id: \.self) { index in
                Button {
                    taskData[index].completed.toggle()
                } label: {
                    HStack {
                        Image(systemName: taskData[index].completed == true ? "checkmark.circle.fill" : "circle")
                        Text(taskData[index].title)
                    }
                }
                .foregroundColor(.black)
            }
            .navigationTitle("ToDoリスト")
        }
    }
}

#Preview {
    ContentView()
}
