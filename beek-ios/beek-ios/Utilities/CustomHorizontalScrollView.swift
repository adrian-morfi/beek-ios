//
//  CustomHorizontalScrollView.swift
//  beek-ios
//
//  Created by Adrian Morfi on 23/1/21.
//

import SwiftUI

struct HorizontalScrollView: View {
    var title : String
    var data : [BookModel]
    
    var body: some View {
        VStack{
            HStack{
                
                Text(title)
                    .font(.title2)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Spacer()
                
                
                NavigationLink(destination: EmptyView()) {
                    Text("Ver más")
                        .foregroundColor(Color("Color1"))
                }
                
                
                

            }
            .padding(.horizontal)
            .padding(.top,25)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(data){book in
                        CustomCardView(data: book)
                    }
                }
            }
            
            
        }
        
    }
}
