//
//  TLButtonView.swift
//  firebaseConnet
//
//  Created by admin49 on 23/09/24.
//

import SwiftUI

struct TLButtonView: View {
    
    let title: String
    let backgroundColor: Color
    let action:()->Void
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius:10)
                    .foregroundStyle(backgroundColor)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButtonView(title: "value", backgroundColor: .pink){
        //action
    }
}
