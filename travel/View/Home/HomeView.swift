//
//  HomeView.swift
//  travel
//
//  Created by Jundana Al-Basyir on 23/11/22.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 18){
            Text("Start your \nAdventure \nan Go \nTravel Now")
                .font(.system(size: 42, weight: .bold, design: .rounded))
                .multilineTextAlignment(.leading)

            Text("Discover local destinations beauty with Bluesky and travel with pride.")
                .font(.system(size: 18, weight: .regular, design: .rounded))
            
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
