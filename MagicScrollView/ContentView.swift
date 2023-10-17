//
//  ContentView.swift
//  MagicScrollView
//
//  Created by André Filipe Fonsêca Borba on 17/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                ScrollImageView(image: .bellagio)
                ScrollImageView(image: .excalibur)
                ScrollImageView(image: .luxor)
                ScrollImageView(image: .paris)
                ScrollImageView(image: .stratosphere)
                ScrollImageView(image: .treasureisland)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
