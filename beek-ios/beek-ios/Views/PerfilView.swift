//
//  Biblioteca.swift
//  beek-ios
//
//  Created by Adrian Morfi on 20/1/21.
//

import SwiftUI

struct Perfil: View {
    @State var index = 0
    @State var scrolled = 0
    @State var index1 = 0
    @State var showSettingsView = false
    
    @State var viewSelected = 0
    
    var body: some View{
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack{
                Image("turtlerock")
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 7)
                    .padding()
                
                Spacer()
                
                HStack{
                    Button(action: {
                        self.viewSelected = 0
                    }) {
                                                    
                        Text("Descripción")
                            .foregroundColor(self.viewSelected == 0 ? .white : Color.white.opacity(0.5))
                            .padding(.vertical)
                            .padding(.horizontal)
                            .frame(height: 40)
                            .cornerRadius(10)
                            .background(self.viewSelected == 0 ? Color("Color2") : Color("Color"))
                    }
                    .cornerRadius(10)
                    
                    
                    Divider()
                    
                    Button(action: {
                        self.viewSelected = 1
                    }) {
                                                    
                        Text("Feed")
                            .foregroundColor(self.viewSelected == 1 ? .white : Color.white.opacity(0.5))
                            .padding(.vertical)
                            .padding(.horizontal)
                            .frame(height: 40)
                            .cornerRadius(10)
                            .background(self.viewSelected == 1 ? Color("Color2") : Color("Color"))
                    }
                    .cornerRadius(10)
                    
                    Divider()
                    
                    Button(action: {
                        self.viewSelected = 2
                    }) {
                                                    
                        Text("Recomendaciones")
                            .foregroundColor(self.viewSelected == 2 ? .white : Color.white.opacity(0.5))
                            .padding(.vertical)
                            .padding(.horizontal)
                            .frame(height: 40)
                            .cornerRadius(10)
                            .background(self.viewSelected == 2 ? Color("Color2") : Color("Color"))
                    }
                    .cornerRadius(10)
                    
                    
                }
                .padding(.top)
                
                GeometryReader{ _ in
                    VStack{
                        if self.viewSelected == 0 {
                            VStack(alignment: .leading) {
                                Text("Adrian Morfi")
                                    .font(.title)

                                HStack {
                                    Text("Programador")
                                    Spacer()
                                    Text("España")
                                }
                                .font(.subheadline)
                                .foregroundColor(.secondary)

                                Divider()

                                
                                Text("Soy Adrian, programador y fan de Beek.")
                                    .multilineTextAlignment(.leading)
                                    .padding(.top)
                                    .padding(.horizontal)
                                
                            }
                            .padding()
                        }else if self.viewSelected == 1 {
                            Text("Feed")
                        }else if self.viewSelected == 2 {
                            Text("Recomendaciones")
                        }
                    }
                }
            }
        }
        .background(Color("Color").edgesIgnoringSafeArea(.all))
        .navigationBarTitle("Perfil").foregroundColor(.white)
        .navigationBarItems(trailing:
            Button(
                action: {
                    self.showSettingsView.toggle()
                }, label: {
                        Image(systemName:"gear")
                            .font(.system(size: 25))
                            .foregroundColor(Color("Color1"))
            })
        )
        .sheet(isPresented: $showSettingsView) {
            PopUpView(showSettingsView: self.$showSettingsView, title: "Settings")
        }
    }
}

struct PerfilView_Previews: PreviewProvider {
    static var previews: some View {
        Perfil()
    }
}

