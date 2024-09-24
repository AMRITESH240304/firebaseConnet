//
//  ToDoListViewModel.swift
//  firebaseConnet
//
//  Created by admin49 on 22/09/24.
//

import Foundation
import FirebaseFirestore

class ToDoListViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    private let userId:String
    init(userId:String){
        self.userId = userId
    }
    
    func deleteItem(id:String){
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
            
    }
}
