//
//  SimilarFilmsItems.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct SimilarFilmsItems: View {
    let movie: Movie
    
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .bottomLeading) {
                Image(movie.imageLink)
                    .clipShape(RoundedRectangle(cornerRadius: 30.0, style: .continuous))
                
                HStack {
                    ForEach(movie.tags, id: \.self) { item in
                        Text(item.uppercased())
                            .font(.system(size: 14))
                            .foregroundColor(Color("secondry 2"))
                            .padding(.vertical, 12)
                            .padding(.horizontal, 24)
                            .background(Color.black.opacity(0.5))
                            .cornerRadius(11)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 24)
            }
            
            Text(movie.title)
                .foregroundColor(Color("text_color"))
                .font(.system(size: 20, weight: .semibold))
                .padding(.leading)

        }
    }
}

struct SimilarFilmsItems_Previews: PreviewProvider {
    static var previews: some View {
        SimilarFilmsItems(movie: Movie.dummyData)
    }
}
