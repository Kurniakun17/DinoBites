//
//  FoodCardView.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 23/06/24.
//

import SwiftUI

struct FoodCardView: View {
    var name: String
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 143, height: 106)
            VStack(alignment: .leading) {
                Text(name)
                    .font(.subheadline)
                    .fontWeight(.bold)
//                    .multilineTextAlignment(.leading)

                HStack {
                    Circle()
                        .fill(.green)
                        .frame(width: 8, height: 8)
                    Text("70 cal")
                        .fontWeight(.bold)
                        .font(.caption)
                }

                Text("1 porsi * 50gr")
                    .fontWeight(.bold)
                    .font(.caption)
                    .foregroundStyle(.gray)

                VStack(alignment: .trailing) {
                    Button(action: {}) {
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
        .overlay(RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1))
    }
}

#Preview {
    FoodCardView(name: "Ayam Teriyaki")
}
