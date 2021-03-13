//
//  Rating.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct Rating: View {
    @State var rate: Int
    let onClick: (Int) -> Void
    
    var body: some View {
        HStack {
            ForEach(0 ..< 5) { item in
                Image(rate > item ? "Star" : "star_empty")
                    .onTapGesture {
                        rate = item + 1
                        UIImpactFeedbackGenerator(style: .medium)
                            .impactOccurred()
                        onClick(rate)
                    }
            }
        }
    }
}

struct Rating_Previews: PreviewProvider {
    static var previews: some View {
        Rating(rate: 3){_ in}
    }
}
