//
//  CVView.swift
//  myApp
//
//  Created by Pascal Ahlner on 16.06.22.
//

import SwiftUI

struct CVView: View {
    
    @State var showCV = false
    var width: CGFloat
    
    var body: some View {
        
        VStack(alignment: .leading) {
            HStack(spacing: 13.0) {
                Text("Lebenslauf")
                    .fontWeight(.bold)
                    .opacity(0.9)
                    
                Button {
                    withAnimation(.easeInOut(duration: 0.4)) {
                        showCV.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showCV ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.frame(width: width, alignment: .leading)
            
            if(showCV) {
                ForEach(0 ..< 7) { item in
                    CVItemView(Item: item, width: UIScreen.main.bounds.width - 20)
                }
                
            }
        }
        
    }
}

struct CVView_Previews: PreviewProvider {
    static var previews: some View {
        CVView(width: UIScreen.main.bounds.width - 20)
    }
}
