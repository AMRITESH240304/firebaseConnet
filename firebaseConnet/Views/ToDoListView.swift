//
//  ToDoListitemsView.swift
//  firebaseConnet
//
//  Created by admin49 on 22/09/24.
//

import SwiftUI
import FirebaseFirestore

struct ToDoListView: View {
    
    @StateObject var viewModel:ToDoListViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String){
        // user/<id>/todos/<entries>
        self._items = FirestoreQuery(collectionPath:"users/\(userId)/todos")
        
        self._viewModel = StateObject(wrappedValue: ToDoListViewModel(userId: userId))
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List(items){
                    item in ToDoListItemView(item: item)
                        .swipeActions{
                            Button{
                                // Deletex
                                viewModel.deleteItem(id: item.id)
                            }label: {
                                Text("Delete")
                                    
                            }
                            .tint(.red)
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("ToDo List")
            .toolbar{
                Button{
                    viewModel.showingNewItemView = true
                }
                label:{
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented:$viewModel.showingNewItemView){
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "9I0mybvcFThe12SjtOghmI0ZPSp2")
}
