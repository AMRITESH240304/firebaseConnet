//
//  ToDoListitemView.swift
//  firebaseConnet
//
//  Created by admin49 on 22/09/24.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ProfileViewModel()
    let item: ToDoListItem
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(item.title)
                    .font(.body)
                Text(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            Button{
                //put
                viewModel.togglesIsDone(item: item)
            } label:{
                Image(systemName:item.isDone ? "checkmark.circle.fill" : "checkmark.circle")
            }
        }
    }
}

#Preview {
    ToDoListItemView(item: .init(id: "123", title: "Get milk", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true))
}
