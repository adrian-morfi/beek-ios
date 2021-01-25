//
//  ContentView.swift
//  beek-ios
//
//  Created by Adrian Morfi on 20/1/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user : UserModel
    
    var body: some View {
        CustomTabView()        
            .preferredColorScheme(.dark)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


var bookListTest = [
    BookModel(id: 0, name: "nombre", image: "p1"),
    BookModel(id: 1, name: "nombre", image: "p2"),
    BookModel(id: 2, name: "nombre", image: "p3"),
    BookModel(id: 3, name: "nombre", image: "p4"),
    BookModel(id: 4, name: "nombre", image: "p5"),
    BookModel(id: 5, name: "nombre", image: "p6"),
    BookModel(id: 6, name: "nombre", image: "p7"),
    BookModel(id: 7, name: "nombre", image: "p8"),
    BookModel(id: 8, name: "nombre", image: "p9"),
    BookModel(id: 9, name: "nombre", image: "p1")
]

var categoryListTest = [
    CategoryModel(name: "Romance", image: "p1"),
    CategoryModel(name: "Fantasía", image: "p6"),
    CategoryModel(name: "Negocios", image: "p2"),
    CategoryModel(name: "Crimen y misterio", image: "p3"),
    CategoryModel(name: "Ciencia Ficción", image: "p4"),
    CategoryModel(name: "Biografías", image: "p5"),
    
]
