//
//  ProfileView.swift
//  beek-ios
//
//  Created by Adrian Morfi on 23/1/21.
//

import SwiftUI

struct PopUpView: View {
    @Binding var showSettingsView: Bool
    var title : String
    @State private var index = 0
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    Section{
                        HStack{
                            Image("pic")
                                .resizable()
                                .frame(width: 75, height: 75)
                                .cornerRadius(50)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Adrian Morfi")
                                Text("adrianmorfi2010@gmail.com")
                                    .font(.system(size: 12))
                            }
                            .padding(.leading,10)
                            
                            Spacer(minLength: 0)
                        }
                    }
                    
                    Section{
                        NavigationLink(destination: Text("Prueba")) {
                            HStack {
                                Text("Editar perfil")
                                    .font(.headline)
                            }
                            .padding(15)
                        }
                        NavigationLink(destination: Text("Prueba")) {
                            HStack {
                                Text("Administrar suscripción")
                                    .font(.headline)
                            }
                            .padding(15)
                        }
                        
                        NavigationLink(destination: Text("Prueba")) {
                            HStack {
                                Text("Danos tu feedback")
                                    .font(.headline)
                            }
                            .padding(15)
                        }
                        
                    }
                    
                    Section{
                        NavigationLink(destination: Text("Prueba")) {
                           HStack {
                                Text("Ayuda")
                                    .font(.headline)
                            }
                            .padding(15)
                        }
                    }
                    
                    Section{
                       HStack {
                        Button(action:{}) {
                                
                                Text("Cerrar sesión")
                                    .font(.headline)
                                    .foregroundColor(Color(.red))
                            }
                        }
                        .padding(15)
                    }
                    
                    
                    
                }
                .listStyle(InsetGroupedListStyle())
                
                
            }
            .navigationBarTitle(title)
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarItems(trailing: Button(action: {
                    self.showSettingsView = false
                }) {
                    Text("Done").bold()
                }
            )
        }
        .preferredColorScheme(.dark)
        .accentColor(Color("Color1"))
        
        
        
    }
}
