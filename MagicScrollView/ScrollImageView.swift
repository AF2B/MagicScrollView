//
//  ScrollImageView.swift
//  MagicScrollView
//
//  Created by André Filipe Fonsêca Borba on 17/10/23.
//

import SwiftUI

struct ScrollImageView: View {
    let image: ImageResource
    
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
            .scrollTransition { content, phase in content
                    .scaleEffect(x: phase.isIdentity ? 1 : 0.8, y: phase.isIdentity ? 1 : 0.8)
                    .opacity(phase.isIdentity ? 1 : 0.7)
                    .rotation3DEffect(.degrees(phase.isIdentity ? 0 : 45), axis: (x: 1, y: 0, z: 0))
            }
    }
}

#Preview {
    ScrollImageView(image: .excalibur)
}
