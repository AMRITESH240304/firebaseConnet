//
//  HeaderView.swift
//  firebaseConnet
//
//  Created by admin49 on 22/09/24.
//

import SwiftUI

struct HeaderView: View {
    
    let title:String
    let subtitle:String
    let angle:Double
    let backgroundColor:Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
                
            
            VStack{
                Text(title)
                    .font(.system(size:50))
                    .foregroundColor(Color.white)
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top,30)
        }
        .frame(width: UIScreen.main.bounds.width*3,height: 350)
        .offset(y:-150)
    }
}

#Preview {
    HeaderView(title: "title", subtitle: "Subtitle", angle: 15, backgroundColor: .blue)
}
