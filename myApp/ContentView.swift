//
//  ContentView.swift
//  myApp
//
//  Created by Pascal Ahlner on 14.06.22.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ZStack{
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                HeaderView()
                
                AboutMeView(width: UIScreen.main.bounds.width - 20).padding(.top, 10.0)
                
                SkillsView(width: UIScreen.main.bounds.width - 20).padding(10.0)
                
                ProjectView(width: UIScreen.main.bounds.width - 20).padding(.top, 10.0)
                
                CVView(width: UIScreen.main.bounds.width - 20).padding(.top, 10.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .colorScheme(.dark)
    }
}
