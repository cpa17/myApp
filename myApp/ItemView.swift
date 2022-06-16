//
//  ItemView.swift
//  myApp
//
//  Created by Pascal Ahlner on 15.06.22.
//

import SwiftUI

struct ItemView: View {
    
    var width: CGFloat
    var Item: Int
    
    var ItemText = [
        "Java",
        "C++",
        "JavaScript",
        "Html",
        "Kotlin",
        "Assembler",
        "Unity",
        "Haskell",
        "Swift",
    ]
    
    var ItemImage = [
        "Java",
        "c++",
        "javascript",
        "html",
        "kotlin",
        "desktopcomputer",
        "unity",
        "haskell",
        "swift"
    ]
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack{
            if (Item == 5 || Item == 8) {
                Image(systemName: ItemImage[Item])
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .opacity(0.8)
            } else {
                if colorScheme == .dark {
                    Image(ItemImage[Item])
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .opacity(0.8)
                        .colorInvert()
                } else {
                    Image(ItemImage[Item])
                        .resizable()
                        .frame(width: 50, height: 50, alignment: .center)
                        .opacity(0.8)
                }
            }
            
            Text(ItemText[Item])
                .fontWeight(.bold)
                .padding(.top, 5.0)
                .font(.system(size: 17))
        }.padding()
            .frame(width: width)
            .background(
            RoundedRectangle(cornerRadius: 10)
                .opacity(0.1)
            )

        
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(width: 100, Item: 0)
        ItemView(width: 100, Item: 8)
    }
}
