//
//  LoginViewMOdel.swift
//  firebaseConnet
//
//  Created by admin49 on 22/09/24.
//

import Foundation
import FirebaseAuth

class LoginViewMOdel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String = ""
    
    init(){}
    
    func login(){
        guard validate() else {
            return
        }
        
        //try log in
        
        Auth.auth().signIn(withEmail:email, password: password)
    }
    
    private func validate() -> Bool{
        errorMessage = ""
        guard !email.trimmingCharacters(in:.whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty
        else {
            errorMessage = "Please fill in all fields"
            return false
        }
        
        // email@fo.com
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter a valid email"
            return false
        }
        
        return true
    }
}
