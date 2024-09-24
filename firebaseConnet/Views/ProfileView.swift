//
//  ProfileView.swift
//  firebaseConnet
//
//  Created by admin49 on 22/09/24.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                if let user = viewModel.user{
                    Image(systemName: "person.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundStyle(.blue)
                        .frame(width: 125, height: 125)
                        .padding()
                    //Info:Name,email,member
                    VStack(alignment: .leading){
                        HStack{
                            Text("Name: ")
                                .bold()
                            Text(user.name)
                        }
                        HStack{
                            Text("Email: ")
                                .bold()
                            Text(user.email)
                        }
                        HStack{
                            Text("Member since: ")
                                .bold()
                            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date:.abbreviated,time:.shortened))")
                        }
                    }
                    
                    Button("LogOut"){
                        viewModel.logOut()
                    }
                    .tint(.red)
                    .padding()
                    
                    Spacer()
                }
                else{
                    Text("Loading....")
                }
                    
                
                
            }
            .navigationTitle("Profile")
        }
        .onAppear(perform: viewModel.fetchUser)
    }
}

#Preview {
    ProfileView()
}
