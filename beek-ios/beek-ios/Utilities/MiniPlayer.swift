//
//  MiniPlayer.swift
//  beek-ios
//
//  Created by Adrian Morfi on 23/1/21.
//

import SwiftUI

struct Miniplayer: View {
    var animation: Namespace.ID
    @Binding var expand : Bool
    
    var height = UIScreen.main.bounds.height / 3
    var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    @State var volume : CGFloat = 0
    @State var offset : CGFloat = 0
    
    var body: some View {
        
        VStack{
            
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ? 60 : 0, height: expand ? 4 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top,expand ? safeArea?.top : 0)
                .padding(.vertical,expand ? 30 : 0)
            
            HStack(spacing: 15){
                if expand{Spacer(minLength: 0)}
                
                Image("pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: expand ? height : 55, height: expand ? height : 55)
                    .cornerRadius(15)
                
                if !expand{
                    
                    VStack{
                        Text("Capítulo 13")
                            .font(.title2)
                            .fontWeight(.bold)
                            .matchedGeometryEffect(id: "capitulo", in: animation)
                            .padding(.leading, 0)
                        
                        Text("Entre dos mundos")
                            .padding(.leading, 0)
                            .matchedGeometryEffect(id: "nombre", in: animation)
                    }
                }
                
                Spacer(minLength: 0)
                
                if !expand{
                    
                    HStack{
                        Spacer()
                        
                        Button(action: {}, label: {
                            
                            Image(systemName: "gobackward.15")
                                .font(.title2)
                                .foregroundColor(.primary)
                        })
                        Spacer()
                        Button(action: {}, label: {
                            
                            Image(systemName: "play.fill")
                                .font(.title2)
                                .foregroundColor(.primary)
                                .matchedGeometryEffect(id: "play", in: animation)
                        })
                        
                        Spacer()
                    }
                }
            }
            .padding(.horizontal)
            
            VStack(spacing: 15){

                Spacer(minLength: 0)
                
                HStack{
                    
                    if expand{
                        
                        HStack{
                            VStack{
                                Text("Capítulo 13")
                                    .font(.title2)
                                    .foregroundColor(.primary)
                                    .fontWeight(.bold)
                                    .matchedGeometryEffect(id: "capitulo", in: animation)
                                
                                Text("Entre dos mundos")
                                    .matchedGeometryEffect(id: "nombre", in: animation)
                                
                            }
                            
                            Spacer()
                            
                            Button(action: {}) {
                                
                                Image(systemName: "square.and.arrow.up")
                                    .font(.title2)
                                    .foregroundColor(.primary)
                            }
                        }
                        
                    }
                    
                }
                .padding()
                .padding(.top,20)
                
                HStack{
                    
                    Capsule()
                        .fill(
                        
                            LinearGradient(gradient: .init(colors: [Color.primary.opacity(0.7),Color.primary.opacity(0.1)]), startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(height: 4)
                    
                    Text("LIVE")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    Capsule()
                        .fill(
                        
                            LinearGradient(gradient: .init(colors: [Color.primary.opacity(0.1),Color.primary.opacity(0.7)]), startPoint: .leading, endPoint: .trailing)
                        )
                        .frame(height: 4)
                }
                .padding()
                
                HStack{
                    Button(action: {}) {
                        
                        Image(systemName: "backward.end.fill")
                            .font(.largeTitle)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    
                    Button(action: {}) {
                        
                        Image(systemName: "gobackward.15")
                            .font(.largeTitle)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    
                    Button(action: {}) {
                        
                        Image(systemName: "play.fill")
                            .font(.largeTitle)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    
                    Button(action: {}) {
                        
                        Image(systemName: "goforward.15")
                            .font(.largeTitle)
                            .foregroundColor(.primary)
                    }
                    .padding()
                    
                    Button(action: {}) {
                        
                        Image(systemName: "forward.end.fill")
                            .font(.largeTitle)
                            .foregroundColor(.primary)
                    }
                    .padding()
                }
                
                Spacer(minLength: 0)
                
                HStack(spacing: 15){
                    
                    Image(systemName: "speaker.fill")
                        .font(.title2)
                    
                    Slider(value: $volume)
                    
                    Image(systemName: "speaker.wave.2.fill")
                        .font(.title2)
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Text("1x")
                            .foregroundColor(.primary)
                        
                    }
                    .background(
                        Image(systemName: "rectangle")
                            .font(.title2)
                            .foregroundColor(.primary)
                    )
                    
                }
                .padding()
                
                HStack(spacing: 22){
                    
                    Spacer()
                    
                    Button(action: {}) {
                        
                        Image(systemName: "list.bullet")
                            .font(.title)
                            .foregroundColor(.primary)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        
                        Image(systemName: "arrow.down.circle")
                            .font(.title)
                            .foregroundColor(.primary)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        
                        Image(systemName: "exclamationmark.bubble")
                            .font(.title)
                            .foregroundColor(.primary)
                    }
                    
                    Spacer()
                    
                }
                .padding(.bottom,safeArea?.bottom == 0 ? 15 : safeArea?.bottom)
            }
            .frame(height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
        }
        .frame(maxHeight: expand ? .infinity : 80)
        .background(
        
            VStack(spacing: 0){
                
                BlurView()
                
                Divider()
            }
            .onTapGesture(perform: {
                
                withAnimation(.spring()){expand = true}
            })
        )
        .cornerRadius(expand ? 20 : 0)
        .offset(y: expand ? 0 : -48)
        .offset(y: offset)
        .gesture(DragGesture().onEnded(onended(value:)).onChanged(onchanged(value:)))
        .ignoresSafeArea()
    }
    
    func onchanged(value: DragGesture.Value){
        if value.translation.height > 0 && expand {
            
            offset = value.translation.height
        }
    }
    
    func onended(value: DragGesture.Value){
        
        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.95, blendDuration: 0.95)){
            if value.translation.height > height{
                
                expand = false
            }
            
            offset = 0
        }
    }
}
