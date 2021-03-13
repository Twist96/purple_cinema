//
//  RatingsView.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct RatingsView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Show slid rating here")
                    .foregroundColor(Color("yellow1"))
                Spacer()
                Text("8.6")
                    .font(.system(size: 21, weight: .semibold))
                    .foregroundColor(Color("text_color"))
            }
            
            HStack {
                Text("IMDb")
                    .foregroundColor(Color("text_color").opacity(0.8))
                Spacer()
                Text("8.7")
                    .font(.system(size: 21, weight: .semibold))
                    .foregroundColor(Color("text_color"))
            }
            
            HStack {
                Text("Cinema search")
                    .foregroundColor(Color("text_color").opacity(0.8))
                Spacer()
                Text("8.8")
                    .font(.system(size: 21, weight: .semibold))
                    .foregroundColor(Color("text_color"))
            }
            
            HStack {
                Text("IMDb")
                    .foregroundColor(Color("text_color").opacity(0.8))
                Spacer()
                Text("8.8")
                    .font(.system(size: 21, weight: .semibold))
                    .foregroundColor(Color("text_color"))
            }
        }
        .padding(25)
        .background(Color("background2"))
        .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView()
    }
}
