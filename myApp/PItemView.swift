//
//  PItemView.swift
//  myApp
//
//  Created by Pascal Ahlner on 15.06.22.
//

import SwiftUI

struct PItemView: View {
    
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
    
    var ItemImage = [
        "Java",
        "kotlin",
        "desktopcomputer",
        "swift",
        "unity",
    ]
    
    var ItemLink = [
        "https://github.com/cpa17/mecha-wars",
        "https://github.com/cpa17/SportNews",
        "https://github.com/cpa17/Assembler-Pong",
        "https://github.com/cpa17/myApp",
        "https://github.com/cpa17/Jump-Land-3D",
    ]
    
    var width: CGFloat
    var Item: Int
    @Environment(\.colorScheme) var colorScheme
    @State private var showWebView = false
    
    var body: some View {
     
        HStack {
            if (Item >= 2 && Item != 4) {
                Image(systemName: ItemImage[Item])
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .center)
                    .opacity(0.8)
            } else {
                if colorScheme == .dark {
                    Image(ItemImage[Item])
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .opacity(0.8)
                        .colorInvert()
                } else {
                    Image(ItemImage[Item])
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .opacity(0.8)
                }
            }
            
            VStack (alignment: .leading){
                Text(ItemText[Item])
                    .fontWeight(.bold)
                    .padding(.top, 5.0)
                    .padding(.leading, 12.0)
                    .font(.system(size: 17))
            
                Text(ItemDescription[Item])
                    .fontWeight(.medium)
                    .padding(.top, 1.0)
                    .padding(.bottom, 5.0)
                    .padding(.leading, 12.0)
                    .font(.system(size: 17))
                    .opacity(0.7)
            }.frame(width: width - 100, alignment: .leading)
            
            Button {
                showWebView.toggle()
            } label: {
                Image(systemName: "arrow.right")
                    .font(.system(size: 20, weight: .bold))
            }.buttonStyle(PlainButtonStyle())
                .sheet(isPresented: $showWebView) {
                    WebView(url: URL(string: ItemLink[Item])!)
                }
            
        }.frame(width: width)
            .background(
            RoundedRectangle(cornerRadius: 10)
                .opacity(0.1)
            )
    }
}


struct PItemView_Previews: PreviewProvider {
    static var previews: some View {
        PItemView(width: UIScreen.main.bounds.width - 20, Item: 1)
    }
}
