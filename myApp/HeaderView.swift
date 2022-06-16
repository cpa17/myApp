//
//  HeaderView.swift
//  myApp
//
//  Created by Pascal Ahlner on 14.06.22.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            VStack(alignment: .center) {
                Image("IMG_0446")
                    .resizable()
                    .frame(width: 150.0, height: 150.0)
                    .scaledToFit()
                    .clipShape(Circle())
                    .shadow(color: Color.gray, radius: 5)
            
                Text("Christoph Pascal Ahlner")
                    .font(.system(size: 17))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .lineLimit(-1)
                    .padding(.top, 10.0)
                
                HStack {
                    Image(systemName: "location.fill")
                        .font(.system(size: 15))
                    Text("Leipzig")
                        .font(.system(size: 17))
                        
                }.opacity(0.65)
            }.padding(.top, 10)
            
        }

    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
