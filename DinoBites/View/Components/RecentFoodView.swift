//
//  FoodCardView.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 22/06/24.
//

import SwiftUI

struct RecentFoodView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Nasi Goreng")
                .fontWeight(.bold)
            HStack {
                HStack (spacing: 4){
                    Circle()
                        .fill(.green)
                        .frame(width: 8, height: 8)
                    Text("70 kcal")
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

                Button(action: {}) {
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
                .stroke(.gray, lineWidth: 1)
        )
        .padding(.bottom, 10)
    }
}

#Preview {
    FoodCardView()
}
