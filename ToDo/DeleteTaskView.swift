//
//  DeleteTaskView.swift
//  ToDo
//
//  Created by silicagel on 2024/12/15.
//

import SwiftUI

struct DeleteTaskView: View {
    @State var isShowAlert: Bool = false
    @Binding var taskData: [(title: String, completed: Bool)]
    
    var body: some View {
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
