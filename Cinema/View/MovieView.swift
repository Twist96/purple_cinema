//
//  MovieView.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct MovieView: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .topTrailing) {
                Image("behomian")
                    .resizable()
                    .frame(height: 563)
                    .frame(maxWidth: .infinity)
                
                Image("cancel")
                    .padding()
                    .background(Color.white.opacity(0.2).blur(radius: 1))
                    .cornerRadius(17)
                    .padding(.top, 64)
                    .padding(.trailing)
            }
            
            VStack(alignment: .leading) {
                
                Image("play")
                    .padding()
                    .background(Color.white.opacity(0.2).blur(radius: 1))
                    .cornerRadius(17)
                
                Text("Bohemian Rhapsody")
                    .font(.system(size: 38, weight: .semibold))
                    .foregroundColor(Color("text_color"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Drama, Music")
                    .foregroundColor(Color.white.opacity(0.8))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 42)
                
                Button(action: {}) {
                    Text("Watch movie")
                        .bold()
                }
                .padding(.vertical, 18)
                .frame(maxWidth: .infinity)
                .foregroundColor(Color("text_color"))
                .background(Color("primary"))
                .cornerRadius(17)
                .padding(.vertical)
            }
            .padding(.horizontal, 30)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09019607843, green: 0.03137254902, blue: 0.1647058824, alpha: 1)).opacity(0.1), Color(#colorLiteral(red: 0.09019607843, green: 0.03137254902, blue: 0.1647058824, alpha: 1))]), startPoint: .top, endPoint: .bottom))

        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
