//
//  HomeRevised.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 24/06/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            VStack {}.frame(
                minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: .infinity,
                alignment: .topLeading
            )
            .background(.greenSoft)

            Image("background")
                .scaleEffect(1.05)

            Image("cat_1")
                .offset(x: 15, y: -80)

            VStack(spacing: 0) {
                Spacer()

                HStack(spacing: 16) {
                    NutritionBar(type: "calorie", percentage: 20)
                    NutritionBar(type: "sugar", percentage: 100)
                    NutritionBar(type: "salt", percentage: 90)
                    NutritionBar(type: "fat", percentage: 70)
                }

                .padding(.bottom, 12)

                VStack(spacing: 14) {
                    HStack {
                        Image(systemName: "lightbulb.max.fill")
                            .foregroundStyle(.greenOld)
                        Text("Happy mood, happy food, grab it!")
                            .foregroundStyle(.greenOld)
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 20)
                    .background(.greenSoft)
                    .clipShape(RoundedRectangle(cornerRadius: 10))

                    NavigationLink { Test_Shader() } label: {
                        Text("Eat")
                            .font(.title2)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity)
                            .padding(24)
                            .foregroundStyle(.white)
                            .background(.prime)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    }

                    Text("Eat nicely to make miaw stay happy")
                        .foregroundStyle(.gray)
                }
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 32)
                .padding(.vertical, 34)
                .background(.white)
                .clipShape(RoundedCorner(radius: 40, corners: [.topLeft, .topRight]))
                .offset(y: 10)
            }
        }
        .ignoresSafeArea()
    }
}

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

#Preview {
    Home()
}
