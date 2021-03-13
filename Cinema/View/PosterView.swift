//
//  PosterView.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct PosterView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("poster")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 400)
            gradient
            VStack {
                VStack {
                    Text("25,000 films\nand soap operas ")
                        .font(.system(size: 22, weight: .semibold)) +
                    Text("for free")
                        .font(.system(size: 22, weight: .semibold))
                        .foregroundColor(Color("secondry"))
                }
                .foregroundColor(Color("text_color"))
                .multilineTextAlignment(.center)
                
                Spacer()
                
                Button(action: {}) {
                    Text("Learn more")
                        .font(.system(size: 20, weight: .semibold))
                }
                .padding(.vertical, 14)
                .frame(maxWidth: .infinity)
                .foregroundColor(Color("text_color"))
                .background(Color("secondry"))
                .cornerRadius(17)
                .padding()
            }
            .frame(height: 175)
            .frame(maxWidth: .infinity)
            .padding()
        }
        .frame(height: 400)
        .background(Color("background2"))
        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
    }
    
    @ViewBuilder
    var gradient: some View{
        
        Color.clear
            .frame(maxHeight: .infinity)
            .background(
                LinearGradient(gradient:
                                Gradient(colors: [Color(#colorLiteral(red: 0.1960784314, green: 0.09019607843, blue: 0.3450980392, alpha: 1)).opacity(1),
                                                  Color(#colorLiteral(red: 0.1960784314, green: 0.09019607843, blue: 0.3450980392, alpha: 1)).opacity(1),
                                                  Color(#colorLiteral(red: 0.1960784314, green: 0.09019607843, blue: 0.3450980392, alpha: 1)).opacity(1),
                                                  Color(#colorLiteral(red: 0.1960784314, green: 0.09019607843, blue: 0.3450980392, alpha: 1)).opacity(0.8),
                                                  Color(#colorLiteral(red: 0.1960784314, green: 0.09019607843, blue: 0.3450980392, alpha: 1)).opacity(0.6), Color.clear]), startPoint: .bottom, endPoint: .top))
    }
}

struct PosterView_Previews: PreviewProvider {
    static var previews: some View {
        PosterView()
    }
}
