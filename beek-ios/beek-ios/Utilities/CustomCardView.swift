//
//  CustomCardView.swift
//  beek-ios
//
//  Created by Adrian Morfi on 23/1/21.
//

import SwiftUI

struct CustomCardView: View {
    var data : BookModel
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        NavigationLink(destination: BookDetailView(book: data)){
            VStack{
                Image(data.image)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 4)
                    .cornerRadius(15)
                    .padding(.horizontal)
            }
        }
        
        .animation(.easeInOut)

    }
}
