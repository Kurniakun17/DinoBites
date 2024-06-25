//
//  NutritionBar.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 24/06/24.
//

import SwiftUI

struct NutritionBar: View {
    var type: String
    var isOver: Bool
    @State var isAnimating = false

    var body: some View {
        ZStack {
            if isOver {
                HStack {}
                    .frame(width: 80, height: 80)
                    .background(.red.opacity(0.4))
                    .clipShape(Circle())
                    .scaleEffect(isAnimating ? 1.1 : 0)
                    .onAppear {
                        withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                            isAnimating.toggle()
                        }
                    }

                HStack {}
                    .frame(width: 100, height: 100)
                    .background(.red.opacity(0.2))
                    .clipShape(Circle())
                    .scaleEffect(isAnimating ? 1.1 : 0)
            }
            HStack {
                Image(type)
                    .resizable()
                    .frame(width: 32, height: 32)
            }
            .padding(16)
            .background(isOver ? .red.opacity(1) : .semigray)
            .clipShape(Circle())
        }
    }
}

#Preview {
    NutritionBar(type: "calorie", isOver: true)
}
