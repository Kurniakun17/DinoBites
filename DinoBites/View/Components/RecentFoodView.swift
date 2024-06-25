//
//  FoodCardView.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 22/06/24.
//

import SwiftUI

struct RecentFoodView: View {
    var name: String
    var calorie: Double
    var sugar: Double
    var salt: Double
    var fat: Double
    var addFood: () -> Void

    var body: some View {
        VStack(alignment: .leading) {
            Text(name)
                .fontWeight(.bold)
            HStack {
                HStack(spacing: 4) {
                    Circle()
                        .fill(.green)
                        .frame(width: 8, height: 8)
                    Text(String(calorie) + " kcal")
                        .fontWeight(.bold)
                        .font(.caption)
                }
                Spacer()
                HStack {
                    Text("1 Porsi")
                        .font(.caption)

                    Text("*")
                        .font(.caption)

                    Text("100gr")
                        .font(.caption)
                }
            }

            HStack {
                HStack {}

                Spacer()

                Button(action: addFood) {
                    Image(systemName: "plus")
                        .font(.system(size: 14))
                        .foregroundStyle(.prime)
                        .padding(4)
                        .background(.purplefade)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
            }
        }

        .padding(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8.25)
                .stroke(.gray, lineWidth: 0.5)
        )
        .padding(.bottom, 10)
    }
}

#Preview {
    RecentFoodView(name: "Nasi Goreng", calorie: 350, sugar: 2, salt: 2, fat: 10, addFood: { print("hai") })
}
