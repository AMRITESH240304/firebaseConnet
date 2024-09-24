//
//  NewItemViewModel.swift
//  firebaseConnet
//
//  Created by admin49 on 22/09/24.
//

import Foundation

class NewItemViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    init(){}
    
    func save(){
        
    }
}
