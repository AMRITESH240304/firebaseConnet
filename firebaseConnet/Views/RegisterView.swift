//
//  RegisterView.swift
//  firebaseConnet
//
//  Created by admin49 on 22/09/24.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewModel()
    
    var body: some View {
        VStack{
            HeaderView(title: "Register", subtitle: "start organizing todos", angle: 15, backgroundColor: .pink)
        }
        
        Form{
            TextField("Full Name",text:$viewModel.name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            
            TextField("Email",text:$viewModel.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            SecureField("Password",text:$viewModel.password)
                .textFieldStyle(DefaultTextFieldStyle())
            TLButtonView(title: "Login", backgroundColor: .green){
                // attempt registration
                viewModel.register()
            }
            .padding()
        }
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
