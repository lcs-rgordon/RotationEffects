//
//  ThreeDimensionalRotation.swift
//  RotationEffects
//
//  Created by Russell Gordon on 2024-11-17.
//

import SwiftUI

struct ThreeDimensionalRotation: View {
    var body: some View {
        ZStack {
            Color.purple
                .ignoresSafeArea()

            RoundedRectangle(cornerRadius: 10)
                .fill(Color.yellow)
                .frame(height: 150.0)
                .padding(.horizontal, 50.0)
                .overlay(
                    Text("Steph Curry")
                        .font(.system(size: 42.0, weight: .heavy, design: .rounded))
                        .bold()
                )
                // Make sure only the x axis has a value
                .rotation3DEffect(Angle(degrees: 35),
                                  axis: (x: 1.0, y: 0.0, z: 0.0))
                // Add a shadow
                .shadow(color: .yellow, radius: 20.0)

        }
        
    }
}

#Preview {
    ThreeDimensionalRotation()
}
