//
//  Movie.swift
//  Cinema
//
//  Created by Tochi on 22/02/2021.
//

import Foundation

struct Movie: Identifiable{
    let id = UUID()
    let title: String
    let imageLink: String
    let rating: Int
    let tags: [String]
}


extension Movie{
    static let dummyData = Movie(title: "Avater", imageLink: "avater", rating: 4, tags: ["new", "free"])
}
