//
//  BookDetailView.swift
//  beek-ios
//
//  Created by Adrian Morfi on 23/1/21.
//

import SwiftUI

struct BookDetailView: View {
    
    @State private var showShareSheet = false
    @State var book : BookModel
    
    var body: some View {
        ScrollView{
            
            VStack{
                Text("Narrado por Peter Gil y Maria Siccardi")
                    .foregroundColor(Color.gray)
                
                Text("Español | 1h 24m")
                    .foregroundColor(Color.gray)
                    
                
            }
            .padding(.top, 0)
            .padding(.horizontal)
            
            HStack{
                
                Spacer()
                
                Image("p1")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.height / 4)
                    .cornerRadius(15)
                    .padding(.horizontal)
                
                Spacer()
            }
            
            HStack{
                
                Text("Los Siete Hábitos de las Pesonas Altamente Eficaces")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
            }
            .padding(.top)
            .padding(.horizontal)
            
            Text("Adopta los hábitos de las personas altamente efectivas que te harán sobresalir del resto. Deseas ser más efectivo en tu vida? A lo mejor quieres lograr más  en tu trabajo? O te gustaría ser más amoroso y dedicado con tu pareja? Lo que sea que quieras mejorar, solo lo lograrás si primero cambias tu mismo. Y la manera más adecuada para lograr ese cambio personal es desarrollando mejores hábitos.")
                .multilineTextAlignment(.leading)
                .padding(.top)
                .padding(.horizontal)
            
            
            HStack{
                Button(action: {}) {
                                                
                    Text("Reproducir audiolibro")
                        .foregroundColor(Color("Color1"))
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width/2 - 20, height: 50)
                        
                        .background(Color("Color2"))
                }
                .cornerRadius(10)
                
                Spacer()
                
                Button(action: {}) {
                                                
                    Text("Muestra")
                        .foregroundColor(Color("Color1"))
                        .padding(.vertical)
                        .frame(width: UIScreen.main.bounds.width/2 - 20, height: 50)
                        .cornerRadius(10)
                        .background(Color("Color2"))
                }
                .cornerRadius(10)
                
            }
            .padding(.top)
            .padding(.horizontal)
            
            HStack{
                
                Text("Reviews")
                    .font(.title)
                    .fontWeight(.bold)
                
                Spacer()
                
                ForEach(1...5,id: \.self){i in
                    
                    
                    Image(systemName: i < 4 ? "star.fill" : "star")
                        .foregroundColor(Color("Color1"))
                    
                }
                
            }
            .padding(.top)
            .padding(.horizontal)
            
            HStack(spacing: 0){
                
                ForEach(1...5,id: \.self){i in
                    
                    Image("p\(i)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .offset(x: -CGFloat(i * 20))
                }
                
                Spacer(minLength: 0)
                
                Button(action: {}) {
                    
                    Text("Ver todo")
                        
                }
            }
            .padding(.leading,20)
            .padding(.top)
            .padding(.horizontal)
            
            VStack{
                //Para ti
                HorizontalScrollView(title: "Libros relacionados", data: bookListTest)
            }
            .padding(.bottom, 100)
            
        }
        .sheet(isPresented: $showShareSheet) {
            CustomShareView(activityItems: ["https://www.beek.io"])
        }
        .navigationTitle("Stephen R. Covery")
        .background(Color("Color").edgesIgnoringSafeArea(.all))
        .navigationBarItems(trailing:
            HStack(spacing: 25) {
                Button(action: {
                    self.showShareSheet = true
                }) {
                    Image(systemName:"square.and.arrow.up")
                        .font(.system(size: 20))
                }
                
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName:"plus")
                        .font(.system(size: 20))
                })
            }
        )
    }
}

/*
struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView()
    }
}
*/
