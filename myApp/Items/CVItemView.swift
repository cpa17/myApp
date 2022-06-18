//
//  CVItemView.swift
//  myApp
//
//  Created by Pascal Ahlner on 16.06.22.
//

import SwiftUI

struct CVItemView: View {
    
    var Item: Int
    var width: CGFloat
    
    var ItemText = [
        "Hochschule für Technik, Wirtschaft und Kultur Leipzig",
        "REMONDIS GmbH & Co. KG, Eilenburg",
        "Berufliches Gymnasium, Berufliches Schulzentrum „Dr. Herrmann Schulze-Delitzsch“",
        "Sparkasse Leipzig",
        "Oberschule Wiederritzsch",
        "Adam-Friedrich-Oeser-Schule",
        "Geburtstag",
    ]
    
    var ItemDescription = [
        "Bachelor of Science (Informatik)",
        "Praktikum",
        "Abitur (Allgemeine Hochschulreife)",
        "Praktikum",
        "Realschulabschluss",
        "Grundschule",
        "Leipzig",
    ]
    
    var ItemDate = [
        "10.2019 - Aktuell",
        "06.2017",
        "08.2016 - 06.2019",
        "06.2015",
        "08.2010 – 06.2016",
        "09.2006 – 06.2010",
        "17.03.2000",
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 3.0)
                    .padding(.leading, 3.0)
                
                VStack(alignment: .leading){
                    
                    Text(ItemText[Item])
                        .font(.system(size: 17))
                        .fontWeight(.bold)
                    
                    Text(ItemDescription[Item])
                        .font(.system(size: 15))
                        .opacity(0.7)
                        .padding(.top, 1.0)
                    
                    Text(ItemDate[Item])
                        .font(.system(size: 14.5))
                        .opacity(0.5)
                        .padding(.top, 5.0)
                }.padding(10.0)
            }.frame(width: width, alignment: .leading)
                .padding(.leading, 5.0)
            
            Circle()
                .frame(width: 10, height: 10)
                .opacity(0.8)
                .padding(.leading, 5.0)
        }.fixedSize()
    }
}

struct CVItemView_Previews: PreviewProvider {
    static var previews: some View {
        CVItemView(Item: 0, width: UIScreen.main.bounds.width - 20)
    }
}
