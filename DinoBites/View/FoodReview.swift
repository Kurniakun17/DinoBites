//
//  FoodReview.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 23/06/24.
//

import SwiftUI

struct FoodReview: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedFood: [FoodModel]
    @State var calorieCount: Int
    var listItem = ["test", "hai"]

    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 16) {
                HStack(alignment: .top) {
                    Image("character" + (calorieCount < 500 ? "_love" : "_overcal"))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 120)
                    VStack(alignment: .leading) {
                        Text("Calorie Kebanyakan")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.top, 12)
                            .foregroundStyle(calorieCount < 500 ? .black : .white)
                        HStack {
                            Circle()
                                .fill(calorieCount < 500 ? .green : .red)
                                .frame(width: 20, height: 20)

                            Text(String(calorieCount) + " kcal")
                                .fontWeight(.bold)
                                .foregroundStyle(calorieCount < 500 ? .black : .white)
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.vertical, 12)
                .background(calorieCount < 500 ? .purplefade : .orangeSoft)
                .clipShape(RoundedRectangle(cornerRadius: 20))

                ForEach(selectedFood.indices) {
                    index in

                    let food = selectedFood[index]

                    HStack(spacing: 16) {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(.black)
                            .frame(width: 80, height: 80)

                        VStack(alignment: .leading, spacing: 8) {
                            Text(food.name)
                                .font(.title3)
                                .fontWeight(.bold)

                            Text("Kalori: \(food.calorie) kcal")

                            Text("1 Porsi * 100gr")
                                .foregroundStyle(.gray)
                        }

                        Spacer()
                        
                        Button(action: {
                            print(index)
                            selectedFood.remove(at: index)
                        }) {
                            Image(systemName: "trash")
                                .font(.title2)
                                .foregroundStyle(.red)
                                .padding(12)
                                .background(.pink.opacity(0.3))
                                .clipShape(RoundedRectangle(cornerRadius: 200))
                        }
                    }
                    .padding(12)
                    .background(.semigray)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding(20)
        .navigationBarBackButtonHidden(true)
        .navigationTitle("Vikri's Plate")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    HStack {
                        Image(systemName: "chevron.backward")
                            .foregroundStyle(.black)
                    }
                    .padding(12)
                    .padding(.horizontal, 4)
                    .background(.semigray)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            }
        }
    }
}

#Preview {
    FoodReview(selectedFood: .constant([
        FoodModel(id: 1, name: "Nasi Goreng", calorie: 350, sugar: 5.0, salt: 2.0, fat: 10.0),
        FoodModel(id: 2, name: "Satay", calorie: 200, sugar: 3.0, salt: 1.5, fat: 15.0)
    ]), calorieCount: 499)
}
