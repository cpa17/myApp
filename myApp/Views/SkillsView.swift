//
//  SkillsView.swift
//  myApp
//
//  Created by Pascal Ahlner on 14.06.22.
//

import SwiftUI

struct SkillsView: View {
    
    @State var showSkills = false
    var width: CGFloat
    
    var body: some View {
            
        VStack(alignment: .leading) {
            HStack(spacing: 13.0) {
                Text("Skillset")
                    .fontWeight(.bold)
                    .opacity(0.9)
                    
                Button {
                    withAnimation(.easeInOut(duration: 0.4)) {
                        showSkills.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 18, weight: .medium))
                        .rotationEffect(self.showSkills ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.frame(width: width, alignment: .leading)
            
            if (showSkills) {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], spacing: 10) {
                    ForEach(0 ..< 9) { item in
                       ItemView(width: width / 3 - 5, Item: item)
                    }
                }
            }
        }
    }

    struct SkillsView_Previews: PreviewProvider {
        static var previews: some View {
            SkillsView(width: UIScreen.main.bounds.width - 20).padding(10)
        }
    }
}
