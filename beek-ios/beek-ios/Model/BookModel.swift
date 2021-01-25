//
//  BookModel.swift
//  beek-ios
//
//  Created by Adrian Morfi on 23/1/21.
//

import SwiftUI

struct BookModel: Identifiable {
    
    var id : Int
    var name: String
    var image: String
    var source: String = "Apple"
    var author : String?
    var description : String?
}

var books = [

    BookModel(id: 0, name: "App Store", image: "p1"),
    BookModel(id: 1, name: "Calculator", image: "p2"),
    BookModel(id: 2, name: "Calendar", image: "p3"),
    BookModel(id: 3, name: "Camera", image: "p4"),
    BookModel(id: 4, name: "Clock", image: "p5"),
    BookModel(id: 5, name: "Facetime", image: "p6"),
    BookModel(id: 6, name: "Health", image: "p7"),
    BookModel(id: 7, name: "Mail", image: "p8"),
    BookModel(id: 8, name: "Maps", image: "p9"),
    BookModel(id: 9, name: "Messages", image: "p10"),
    BookModel(id: 10, name: "News", image: "p1"),
    BookModel(id: 11, name: "Phone", image: "p2"),
    BookModel(id: 12, name: "Photos", image: "p3"),
    BookModel(id: 13, name: "Safari", image: "p4"),
    BookModel(id: 14, name: "Settings", image: "p5"),
    BookModel(id: 15, name: "Stocks", image: "p6"),
    BookModel(id: 16, name: "Wallet", image: "p7"),
    BookModel(id: 17, name: "Weather", image: "p8"),
]
