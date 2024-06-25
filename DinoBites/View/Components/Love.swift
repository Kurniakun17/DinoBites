//
//  Love.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 25/06/24.
//

import SwiftUI

struct Love: View {
    @State var offsetY = 0 + .random(in: 0 ... 12) * 10
    @State var offsetX = 0 + .random(in: -3 ... 10) * 10
    @State var opacityVal = 1.0
    @State var scaleVal = 1 + .random(in: 1 ... 10) * 0.1

    var body: some View {
        Image("love")
            .offset(x: CGFloat(offsetX), y: CGFloat(offsetY))
            .opacity(opacityVal)
            .scaleEffect(scaleVal)
            .onAppear {
                withAnimation(.spring(duration: 1.5)) {
                    offsetY = (.random(in: -11 ... -8) * 10)
                }

                withAnimation(.spring(duration: 2.5)) {
                    opacityVal = 0
                }
            }
    }
}

#Preview {
    Love()
}
