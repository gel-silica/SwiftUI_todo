//
//  ContentView.swift
//  ToDo
//
//  Created by silicagel on 2024/12/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Image(systemName: "circle")
                    Text("ジョギングする")
                }
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                    Text("本を読む")
                }
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                    Text("部屋の掃除")
                }
                HStack {
                    Image(systemName: "circle")
                    Text("お花の水やり")
                }
            }
            .navigationTitle("ToDoリスト")
        }
    }
}

#Preview {
    ContentView()
}
