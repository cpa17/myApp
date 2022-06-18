//
//  AboutMeView.swift
//  myApp
//
//  Created by Pascal Ahlner on 14.06.22.
//

import SwiftUI

struct AboutMeView: View {
    
    @State var showAboutMe = true
    var width: CGFloat
    
    var body: some View {
            
        VStack(alignment: .leading) {
            HStack(spacing: 13.0) {
                Text("Über Mich")
                    .fontWeight(.bold)
                    .opacity(0.9)
                    
                Button {
                    withAnimation(.easeInOut(duration: 0.4)) {
                        showAboutMe.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showAboutMe ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.frame(width: width, alignment: .leading)
            
            if(showAboutMe) {
                Text(
                    "Hey, \nmein Name ist Christoph Pascal Ahlner. \nIch bin 22 Jahre alt und studiere derzeit an der HTWK Leipzig im Bachelorstudiengang Informatik. \nIn meiner Freizeit treffe ich mich gerne mit Freunden und spiele Fußball. Außerdem mag ich leckeres Essen und lustige Filme"
                ).padding(10.0)
                    .frame(width: width)
                    .background(
                    RoundedRectangle(cornerRadius: 10)
                        .opacity(0.1)
                    )
            }
        }
    }

    struct AboutMeView_Previews: PreviewProvider {
        static var previews: some View {
            AboutMeView(width: UIScreen.main.bounds.width - 40).padding(20)
        }
    }
}
