//
//  SimilarFilmsView.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct SimilarFilmsView: View {
    var body: some View {
        VStack(spacing: 32) {
            Text("Similar films")
                .font(.system(size: 23, weight: .semibold))
                .foregroundColor(Color("text_color"))
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ForEach(movies) { item in
                SimilarFilmsItems(movie: item)
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color("background1"))
    }
    
    let movies = [
        Movie.dummyData,
        Movie(title: "Cold heart 2", imageLink: "frozen", rating: 4, tags: ["New"]),
        Movie(title: "Up", imageLink: "up", rating: 4, tags: ["New"]),
        Movie(title: "Seven pairs of unclean", imageLink: "seven", rating: 3, tags: ["новый"])
        
    ]
}

struct SimilarFilmsView_Previews: PreviewProvider {
    static var previews: some View {
        SimilarFilmsView()
            .previewLayout(.sizeThatFits)
    }
}
