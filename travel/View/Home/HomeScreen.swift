//
//  HomeScreen.swift
//  travel
//
//  Created by Jundana Al-Basyir on 23/11/22.
//

import SwiftUI

struct HomeScreen: View {
    // MARK: - PROPERTIES
    @State var showAlert = false
    @State var showModal = false
    
    // MARK: - BODY
    var body: some View {
        // MARK: - NAVIGATIONSTACK
        NavigationStack {
            ZStack {
                Image("bg-iphone")
                    .resizable()
                    .overlay(content: {
                        Rectangle()
                            .opacity(0.4)
                    })
                    .ignoresSafeArea()
                
                // MARK: - HomeView
                HomeView()
                    .padding(.horizontal, 32)
                    .offset(y:80)
                    .foregroundColor(.white)
            } // ZStack
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .principal) {
                    VStack {
                        Text("Travel")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                }
            }) // Toolbar
            .navigationBarItems(leading: leadingIcon, trailing: trailingIcon)
        } // NavigationStack
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

extension HomeScreen {
    private var leadingIcon: some View {
        ZStack {
            Button(action: {
                withAnimation { showAlert.toggle() }
            }, label: {
                Image(systemName: "cloud.sun.fill")
                    .resizable()
                    .foregroundStyle(.white, .yellow)
            })
            .padding(.horizontal, 24)
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Not yet available"),
                    message: Text("Currently on active development"), dismissButton: .default(Text("OK")))
            }
        }
        
    }
    
    private var trailingIcon: some View {
        ZStack {
            Button(action: {
                withAnimation { showModal.toggle() }
            }, label: {
                Image(systemName: "cart.badge.plus")
                    .resizable()
                    .foregroundStyle(.green, .white)
            })
            .padding(.horizontal, 24)
            .sheet(isPresented: $showModal) {
                ModalView()
                    .presentationDetents([.medium])
                    .presentationDragIndicator(.visible)
            }
        }
    }
}
