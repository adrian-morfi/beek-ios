//
//  Logros.swift
//  beek-ios
//
//  Created by Adrian Morfi on 20/1/21.
//

import SwiftUI

struct Logros: View {
    
    
    
    var body: some View {
        ScrollView{
            VStack{
                
                VStack{
                    Text("Hoy has escuchado:")
                        
                    Spacer()
                    
                    Text("33m")
                        .font(.title)
                        .fontWeight(.bold)
                }
            
                Spacer(minLength: 20)
                
                HStack{
                    Text("Inicia una nueva meta diaria para aprovechar tu tiempo y seguir  tu progreso.")
                        .multilineTextAlignment(.leading)
                        .padding(.top)
                        .padding(.horizontal)
                }
                
                VStack{
                    
                    
                    Spacer(minLength: 20)
                    
                    Button(action: {}) {
                                                    
                        Text("Iniciar meta diaria")
                            .foregroundColor(Color("Color1"))
                            .padding(.vertical)
                            .frame(width: UIScreen.main.bounds.width/2 - 20, height: 50)
                            
                            .background(Color("Color2"))
                    }
                    .cornerRadius(10)
                }
                
                Spacer(minLength: 50)
                
                VStack{
                    Text("Tienes una racha de 2 días escuchando:")
                    
                    Spacer(minLength: 20)
                    
                    HStack{
                        Spacer()
                        
                        VStack{
                            Image(systemName: "hourglass")
                                .font(.title)
                            
                            Text("2 días")
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            Text("Racha actual")
                        }
                        
                        Spacer()
                        
                        VStack{
                            Image(systemName: "hourglass.bottomhalf.fill")
                                .font(.title)
                            
                            Text("6 días")
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            Text("Racha más larga")
                        }
                        
                        Spacer()
                    }
                }
                
                //Escuchando
                HorizontalScrollView(title: "Escuchando", data: bookListTest)
                
                Spacer(minLength: 50)
                
                VStack{
                    HStack{
                        
                        Text("Así has aprovechado tu tiempo:")
                            .padding(.leading, 10)
                        Spacer()
                    }
                    
                    Spacer()
                    Group{
                        HStack{
                            Image(systemName: "clock")
                                .font(.system(size: 40))
                                .padding(.leading, 10)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Has escuchado un total de:")
                                Text("8h 30m")
                                    .fontWeight(.bold)
                                    
                            }
                            .padding(.leading,10)
                            
                            Spacer(minLength: 0)
                            
                        }
                        .frame(height: 75)
                        
                        HStack{
                            Image(systemName: "book")
                                .font(.system(size: 40))
                                .padding(.leading, 10)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Escuchaste lo equivalente a leer:")
                                Text("294 páginas")
                                    .fontWeight(.bold)
                                    
                            }
                            .padding(.leading,10)
                            
                            Spacer(minLength: 0)
                            
                        }
                        .frame(height: 75)
                        
                        HStack{
                            Image(systemName: "headphones")
                                .font(.system(size: 40))
                                .padding(.leading, 10)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Has terminado:")
                                Text("3 audiolibros")
                                    .fontWeight(.bold)
                                    
                            }
                            .padding(.leading,10)
                            
                            Spacer(minLength: 0)
                            
                        }
                        .frame(height: 75)
                        
                        
                        
                    }
                    .background(Color("Color2"))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal)
                    .padding(.top,5)
                }
                
                //Terminados
                HorizontalScrollView(title: "Terminados", data: bookListTest)
                    
                
                .padding(.bottom, 100)
            }
        }
        .background(Color("Color").edgesIgnoringSafeArea(.all))
        .navigationBarTitle("Logros").foregroundColor(.white)
        
    }
}

struct Logros_Previews: PreviewProvider {
    static var previews: some View {
        Logros()
    }
}
