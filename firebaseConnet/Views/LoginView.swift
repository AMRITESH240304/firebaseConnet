//
//  LoginView.swift
//  firebaseConnet
//
//  Created by admin49 on 22/09/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewMOdel()
    var body: some View {
        NavigationView{
            VStack{
                //header
                HeaderView(title: "To Do List", subtitle: "Get Things Done", angle: 15, backgroundColor: .pink)
                //login from
                
                Form{
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    TextField("Email Address",text:$viewModel.email)
                        .autocapitalization(.none)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Email Address",text:$viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                    
                    TLButtonView(title: "Login", backgroundColor: .blue){
                        viewModel.login()
                    }
                    
                }
                .offset(y:-50)
                //create Account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create An Account",destination:RegisterView())
                }
                .onAppear(){
                    viewModel.errorMessage.removeAll()
                }
                .padding(.bottom,50)
                
                Spacer()
            }
        }
        
    }
}

#Preview {
    LoginView()
}
