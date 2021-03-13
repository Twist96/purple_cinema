//
//  ChipCollection.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct ChipCollection: View {
    var items: [String]
    var body: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))], spacing: 6) {
            ForEach(items, id: \.self) { item in
                Text(item)
                    .lineLimit(1)
                    .chipStyle()
            }
        }
    }
}

struct ChipCollection_Previews: PreviewProvider {
    static var previews: some View {
        ChipCollection(items: ["Martins", "Micth", "Bale"])
    }
}
