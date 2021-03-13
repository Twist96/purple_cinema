//
//  LibraryContent.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import SwiftUI

struct LibraryContent: LibraryContentProvider {
    
    @LibraryContentBuilder
    var view: [LibraryItem]{
        LibraryItem(ChipCollection(items: ["Hello World"]), title: "Chip Collection", category: .layout)
    }
    
    @LibraryContentBuilder
    func modifiers(base: Image) -> [LibraryItem] {
        LibraryItem(base.chipStyle(), title: "Chip Style", category: .effect)
    }
}

extension View{
    func chipStyle() -> some View{
        return self
            .foregroundColor(Color("secondry 2"))
            .padding(.vertical, 12)
            .padding(.horizontal, 24)
            .background(Color.white.opacity(0.1))
            .cornerRadius(11)
    }
}
