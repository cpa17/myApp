//
//  CVItemView.swift
//  myApp
//
//  Created by Pascal Ahlner on 16.06.22.
//

import SwiftUI

struct CVItemView: View {
    
    var Item: Int
    
    var ItemText = [
        "Mecha Wars",
        "SportNews",
        "Pong",
        "myApp",
        "Jump Land",
    ]
    
    var ItemDescription = [
        "Robo Rally Computer Version in Java",
        "Sport News App for Android in Kotlin",
        "Pong in Assembler",
        "Portfolio App for ios in SwiftUI",
        "3D-Jump 'n' Run Game in Unity",
    ]
    
    var ItemDate = [
        "Java",
        "kotlin",
        "desktopcomputer",
        "swift",
        "unity",
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.8)
            
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3.0)
                    .padding(.leading, 3.0)
                
                VStack(alignment: .leading){
                    
                    Text("Hallo")
                        .font(.system(size: 19))
                        .fontWeight(.bold)
                    
                    Text("Test")
                        .font(.system(size: 17))
                        .opacity(0.7)
                        .padding(.top, 3.0)
                    
                    Text("Date")
                        .font(.system(size: 16.5))
                        .opacity(0.5)
                        .padding(.top, 10)
                }.padding(.leading, 16.0)
            }.padding(.top, 10.0)
        }.fixedSize()
    }
}

struct CVItemView_Previews: PreviewProvider {
    static var previews: some View {
        CVItemView()
    }
}
