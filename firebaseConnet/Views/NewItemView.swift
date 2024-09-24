//
//  NewItemView.swift
//  firebaseConnet
//
//  Created by admin49 on 22/09/24.
//

import SwiftUI

struct NewItemView: View {
    
    @StateObject var viewModel = NewItemViewModel()
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size:32))
                .bold()
            
            Form{
                //Title
                TextField("Title",text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                //Due Date
                
                DatePicker("Due Date",selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
//                Button
                TLButtonView(title:"Save",backgroundColor: .pink){
                    viewModel.save()
                }
            }
        }
    }
}

#Preview {
    NewItemView()
}
