//
//  NutritionBar.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 24/06/24.
//

import SwiftUI

struct NutritionBar: View {
    var type: String
    @State var isAnimating = true
    let startDate = Date()
    @State private var phase: CGFloat = 0
    @State var percentage: Int

    var body: some View {
        TimelineView(.animation) { timeline in
            let progress = timeline.date.timeIntervalSince(startDate) / 4
            let waveProgress = CGFloat(percentage) / 100

            ZStack {
                if percentage >= 120 {
                    HStack {}
                        .frame(width: 60, height: 60)
                        .background(.redSoft.opacity(0.4))
                        .clipShape(Circle())
                        .scaleEffect(isAnimating ? 1.4 : 0)
                        .onAppear {
                            withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                                isAnimating.toggle()
                            }
                        }

                    HStack {}
                        .frame(width: 60, height: 60)
                        .background(.redSoft.opacity(0.2))
                        .clipShape(Circle())
                        .scaleEffect(isAnimating ? 1.7 : 0)
                }

                Circle()
                    .fill(percentage >= 120 ? .redSoft : .semigray)
                    .frame(width: 60, height: 60)

                if percentage < 120 {
                    Wave(progress: waveProgress, waveHeight: 3, phase: phase)
                        .fill(percentage < 80 ? .orange: .green)
                        .frame(width: 70, height: 60)
                        .clipShape(Circle())
                }

                Image(type)
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            .onAppear {
                withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                    phase = 2 * .pi
                }
            }
        }
    }
}

#Preview {
    NutritionBar(type: "calorie", percentage: 20)
}
