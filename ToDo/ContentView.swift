//
//  ContentView.swift
//  ToDo
//
//  Created by silicagel on 2024/12/12.
//

import SwiftUI

struct ContentView: View {
    var taskData = ["ジョギングする", "本を読む", "部屋の掃除", "お花の水やり"]
    var body: some View {
        NavigationStack {
            List(0..<taskData.count, id: \.self) { index in
                HStack {
                    Image(systemName: "circle")
                    Text(taskData[index])
                }
            }
            .navigationTitle("ToDoリスト")
        }
    }
}

#Preview {
    ContentView()
}
