//
//  ProjectView.swift
//  myApp
//
//  Created by Pascal Ahlner on 15.06.22.
//

import SwiftUI

struct ProjectView: View {
    
    @State var showProjects = false
    var width: CGFloat
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 13.0) {
                Text("Projekte")
                    .fontWeight(.bold)
                    .opacity(0.9)
                    
                Button {
                    withAnimation(.easeInOut(duration: 0.4)) {
                        showProjects.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showProjects ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.frame(width: width, alignment: .leading)
            
            if(showProjects) {
                ForEach(0 ..< 5) { item in
                   PItemView(width: width, Item: item)
                }.padding(.bottom, 10)
            }
        }
    }
}

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView(width: UIScreen.main.bounds.width - 20)
    }
}
