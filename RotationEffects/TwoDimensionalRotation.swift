//
//  ContentView.swift
//  RotationEffects
//
//  Created by Russell Gordon on 2024-11-17.
//

import SwiftUI

struct TwoDimensionalRotation: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15.0)
                .foregroundStyle(.green)
                .aspectRatio(1.0/1.0, contentMode: .fit)
                .frame(width: 150.0)
                .rotationEffect(.degrees(-30.0))

            RoundedRectangle(cornerRadius: 15.0)
                .foregroundStyle(.purple)
                .aspectRatio(1.0/1.0, contentMode: .fit)
                .frame(width: 150.0)
                .rotationEffect(.degrees(-15.0))

            RoundedRectangle(cornerRadius: 15.0)
                .foregroundStyle(.red)
                .aspectRatio(1.0/1.0, contentMode: .fit)
                .frame(width: 150.0)
                .overlay {
                    Text("15")
                        .font(.system(size: 96.0, weight: .heavy, design: .rounded))
                        .foregroundStyle(.white)
                }
        }
        .padding()
    }
}

#Preview {
    TwoDimensionalRotation()
}
