//
//  FoodCardView.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 23/06/24.
//

import SwiftUI

struct FoodCardView: View {
    var name: String
    var calorie: Double
    var sugar: Double
    var salt: Double
    var fat: Double
    var addFood: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 143, height: 106)
            VStack(alignment: .leading) {
                Text(name)
                    .font(.subheadline)
                    .fontWeight(.bold)

                HStack(spacing: 4) {
                    Circle()
                        .fill(.green)
                        .frame(width: 8, height: 8)
                    Text(String(calorie) + " kcal")
                        .fontWeight(.bold)
                        .font(.caption)
                }

                Text("1 porsi * 50gr")
                    .fontWeight(.bold)
                    .font(.caption)
                    .foregroundStyle(.gray)

                VStack(alignment: .trailing) {
                    Button(action: addFood) {
                        Image(systemName: "plus")
                            .font(.system(size: 14))
                            .foregroundStyle(.prime)
                            .padding(4)
                            .background(.purplefade)
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(0)
        }

        // MARK: Change this into max width infinityv

        .padding(12)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 0.5))
    }
}

#Preview {
    FoodCardView(name: "Satay", calorie: 200, sugar: 3.0, salt: 1.5, fat: 15.0, addFood: {})
}
