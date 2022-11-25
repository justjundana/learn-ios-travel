//
//  ModalView.swift
//  travel
//
//  Created by Jundana Al-Basyir on 25/11/22.
//

import SwiftUI

struct ModalView: View {
    // MARK: - PROPERTIES
    @Environment(\.openURL) var openURL
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 30) {
            HStack {
                Text("Pink Beach, Flores")
                    .font(.system(size: 20, weight: .bold))
                
                Spacer()
                
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.yellow, .yellow)
                Text("4.8")
                    .font(.system(size: 14))
            } //: HStack
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    CardListView(title: "Walk", icon: "figure.walk.motion", color: .green, bgColor: .blue)
                    
                    CardListView(title: "Food", icon: "fork.knife.circle.fill", color: .orange, bgColor: .blue)
                    
                    CardListView(title: "Stays", icon: "house.fill", color: .blue, bgColor: .blue)
                    
                    CardListView(title: "Rids", icon: "sailboat.fill", color: .purple, bgColor: .blue)
                } //: HStack
            }
            
            VStack(alignment: .leading, spacing: 10){
                Text("About Destination")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                Text("Pink Beach, or Pantai Merah, as it aptly named, is one of seven pink beaches on the planet. This was awesome")
                    .font(.system(size: 16, weight: .regular, design: .rounded))
            } //: VStack
            
            HStack {
                Text("$81,39")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(.blue.opacity(0.8))
                
                Spacer()
                
                Button(action: {
                    openURL(URL(string: "https://www.jundana.dev")!)
                }, label: {
                    HStack {
                        Image(systemName: "bag")
                        Text("Join Tour")
                    }
                    .padding()
                    .background(
                        LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .leading, endPoint: .trailing)
                    )
                    .foregroundColor(.white)
                    .cornerRadius(40)
                })
            } //: HStack
            
        }
        .padding(.horizontal, 30)
        .cornerRadius(15)
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}


struct CardListView: View {
    var title: String
    var icon: String
    var color: Color
    var bgColor: Color
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundStyle(color)
            Text(title)
                .font(.system(size: 18))
        }
        .padding()
        .background(bgColor.opacity(0.03))
        .cornerRadius(5)
        
    }
}
