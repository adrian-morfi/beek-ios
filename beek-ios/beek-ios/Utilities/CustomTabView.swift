//
//  FloatingTabbar.swift
//  beek-ios
//
//  Created by Adrian Morfi on 20/1/21.
//
import SwiftUI
/*
struct CustomTabView : View {
    
    @State private var index = 0
    init() {
        UITabBar.appearance().backgroundColor = UIColor.init(Color("Color2"))
    }
    
    @State var filteredItems = books
    var columns = Array(repeating: GridItem(.flexible(),spacing: 20), count: 2)
    
    var body: some View{
        Group{
            TabView(selection: $index){
                
                CustomNavigationView(view: AnyView(Descubre(filteredItems: $filteredItems)), placeHolder: "Busca tu próxima historia favorita", largeTitle: true, title: "Descubre",
                                     
                    onSearch: { (txt) in

                    // filterting Data...
                    if txt != ""{
                        self.filteredItems = books.filter{$0.name.lowercased().contains(txt.lowercased())}
                    }
                    else{
                        self.filteredItems = books
                    }
                    
                }, onCancel: {
                    // Do Your Own Code When Search And Canceled....
                    self.filteredItems = books
                    
                })
                .ignoresSafeArea().tabItem {
                    Text("Descubre")
                    Image(systemName: "rectangle.grid.2x2" )
                }
                .tag(0)
                
                Logros().tabItem {
                    Text("Logros")
                        .foregroundColor(Color("Color1"))
                    Image(systemName: "applescript")
                }
                .tag(1)
                
                Biblioteca().tabItem {
                    Text("Biblioteca")
                        .foregroundColor(Color("Color1"))
                    Image(systemName: "magnifyingglass")
                }
                .tag(2)

            }
        }
        .background(Color.red.edgesIgnoringSafeArea(.all))
    }
}

*/


import SwiftUI

struct CustomTabView: View {
    @State var index = 0
    @State var expand = false
    @Namespace var animation
    @State var filteredItems = books
    @State var searchText = ""
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            TabView(selection: $index){
                CustomNavigationView(view: AnyView(Descubre(filteredItems: $filteredItems, searchText: $searchText)), placeHolder: "Busca tu próxima historia favorita", largeTitle: true, title: "",
                                     
                    onSearch: { (txt) in

                    // filterting Data...
                    if txt != ""{
                        self.filteredItems = books.filter{$0.name.lowercased().contains(txt.lowercased())}
                        searchText = txt
                    }
                    else{
                        self.filteredItems = books
                        self.searchText = ""
                    }
                    
                }, onCancel: {
                    // Do Your Own Code When Search And Canceled....
                    self.filteredItems = books
                    self.searchText = ""
                    
                })
                .ignoresSafeArea().tabItem {
                    Text("Descubre")
                    Image(systemName: "magnifyingglass" )
                }
                .tag(0)
                
                NavigationView{Logros()}.tabItem {
                    Text("Logros")
                        .foregroundColor(Color("Color1"))
                    Image(systemName: "star")
                }
                .tag(1)
                
                NavigationView{Perfil()}.tabItem {
                    Text("Perfil")
                        .foregroundColor(Color("Color1"))
                    Image(systemName: "person.crop.circle")
                }
                .tag(2)
            }
            .accentColor(Color("Color1"))

            Miniplayer(animation: animation, expand: $expand)
        })
    }
}
