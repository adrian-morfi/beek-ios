//
//  Descubre.swift
//  beek-ios
//
//  Created by Adrian Morfi on 20/1/21.
//

import SwiftUI

struct Descubre: View {
    
    @Binding var filteredItems : [BookModel]
    @Binding var searchText : String
    @State var index = 1
    var columns = Array(repeating: GridItem(.flexible(),spacing: 20), count: 2)
    
    var body: some View {
        ScrollView{
            if(searchText != ""){
                VStack(spacing: 18){
                    LazyVGrid(columns: columns,spacing: 20){
                        
                        ForEach(1...10,id: \.self){index in
                            
                            Image("p\(index)")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 180)
                                .cornerRadius(15)
                        }
                    }
                    .padding(.top,10)
                }
                .padding()
            }else{
                VStack{
                    TabView(selection: self.$index){
                        
                        ForEach(1...9,id: \.self){index in
                            
                            Image("p\(index)")
                                .resizable()
                                // adding animation...
                                .frame(height: self.index == index ?  230 : 180)
                                .cornerRadius(15)
                                .padding(.horizontal)
                                // for identifying current index....
                                .tag(index)
                        }
                    }
                    .frame(height: 230)
                    .padding(.top,25)
                    .tabViewStyle(PageTabViewStyle())
                    .animation(.easeOut)
                    
                    //Para ti
                    HorizontalScrollView(title: "Para ti", data: bookListTest)
                    
                    //Porque escuchaste
                    HorizontalScrollView(title: "Porque escuchaste", data: bookListTest)
                    
                    //En tendencia
                    HorizontalScrollView(title: "En tendencia", data: bookListTest)
                    
                    //Beek Originals
                    HorizontalScrollView(title: "Beek Originals", data: bookListTest)
                    
                    //Ultimos lanzamientos
                    HorizontalScrollView(title: "Últimos lanzamientos", data: bookListTest)
                    
                    //Categorias
                    VStack(spacing: 18){
                        
                        HStack{
                            Text("Categorías")
                                .font(.title2)
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            
                            NavigationLink(destination: EmptyView()) {
                                Text("Ver todas")
                                    .foregroundColor(Color("Color1"))
                            }
                        }
                        
                        LazyVGrid(columns: columns,spacing: 20){
                            
                            ForEach(categoryListTest){category in
                                
                                
                                VStack(alignment: .leading, spacing: 10){
                                    
                                    Image(category.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 180)
                                        .cornerRadius(15)
                                    
                                    Text(category.name)
                                        .fontWeight(.bold)
                                }
                                
                            }
                        }
                        .padding(.top,10)
                        .padding(.bottom, 80)
                    }
                    .padding()
                }
            }
        }
        .background(Color("Color").edgesIgnoringSafeArea(.all))
        .navigationBarTitle("Descubre").foregroundColor(.white)
    }
}
/*
struct Descubre_Previews: PreviewProvider {
    static var previews: some View {
        //Descubre()
    }
}
*/
