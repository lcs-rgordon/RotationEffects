//
//  LinearGradientExample.swift
//  RotationEffects
//
//  Created by Russell Gordon on 2024-11-17.
//

import SwiftUI

struct LinearGradientExample: View {
    var body: some View {
        ZStack {
            
            // Background
            LinearGradient(
                colors: [
                    .darkBlueJaysBlue,
                    .regularBlueJaysBlue,
                    .powderBlueJaysBlue,
                    .white,
                    .white
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            // Foreground
            VStack(spacing: 0) {
                
                Text("Vladimir Guerrero Jr.")
                    .font(.custom("Bradley Hand", fixedSize: 64.0))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)
                    .rotationEffect(.degrees(-10.0))
                    .padding(.bottom)

                Image("Vladdy")
                    .resizable()
                    .scaledToFit()
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    LinearGradientExample()
}
