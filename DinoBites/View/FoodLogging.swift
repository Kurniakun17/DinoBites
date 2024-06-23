//
//  FoodLogging.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 21/06/24.
//

import SwiftUI

struct FoodLogging: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel = FoodLogViewModel()
    @State var filter = "Rekomendasi"
    @State var selectedFood: [FoodModel] = []
    @State var characterMood = ""
    @State var isCooldownActive = false
    @State var calorieCount = 0

    func updateCharacter() {
        if calorieCount > 500 {
            characterMood = "_overcal"
            return
        }

        if !isCooldownActive {
            print("hai")
            characterMood = "_love"
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                isCooldownActive = false
                if calorieCount < 500 {
                    characterMood = ""
                }
            }
        }

        isCooldownActive = true
    }

    var body: some View {
        VStack(spacing: 0) {
            // Display Food Data
            VStack(spacing: 24) {
                CharacterLogView(mood: $characterMood)
                    .offset(x: -20)

                HStack {
                    VStack(alignment: .leading) {
                        Text("Vikri's Plate (\(String(selectedFood.count)) item)")
                            .font(.caption)
                            .fontWeight(.semibold)
                        HStack {
                            Circle()
                                .fill(calorieCount < 500 ? .green : .red)
                                .frame(width: 20, height: 20)

                            Text(String(calorieCount) + " kcal")
                                .fontWeight(.bold)
                        }
                    }
                    Spacer()
                    NavigationLink {
                        FoodReview(selectedFood: $selectedFood, calorieCount: calorieCount)
                    } label: {
                        Text("Review")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                            .padding(.vertical, 12)
                            .padding(.horizontal, 24)
                            .background(.prime)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                    }
                }
            }
            .padding(.top, 12)
            .padding(.horizontal, 20)
            .background(.purplefade)

            // Rounded bottom
            VStack {}
                .frame(maxWidth: .infinity)
                .padding(10)
                .background(.purplefade)
                .clipShape(
                    .rect(
                        bottomLeadingRadius: 32,
                        bottomTrailingRadius: 32
                    )
                )

            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 16) {
                    VStack(alignment: .leading) {
                        Text("Makan yang ini lagi gak?")
                            .fontWeight(.bold)
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(viewModel.recentFood) {
                                    food in RecentFoodView(
                                        name: food.name,
                                        calorie: food.calorie,
                                        sugar: food.sugar,
                                        salt: food.salt,
                                        fat: food.fat,
                                        addFood: {
                                            selectedFood.append(food)
                                            calorieCount += food.calorie
                                            updateCharacter()
                                        }
                                    )
                                }
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.leading, 20)

                    VStack(alignment: .leading) {
                        Text("Rekomendasi Untukmu!")
                            .fontWeight(.bold)

                        HStack {
                            TextField("Cari Rekomendasi", text: .constant("test"))
                                .textFieldStyle(.roundedBorder)

                            Button(action: {}) {
                                Text("Cari")
                                    .foregroundStyle(.white)
                                    .fontWeight(.bold)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 28)
                                    .background(.prime)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                            }
                        }
                        .padding(.trailing, 20)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.leading, 20)

                    ScrollView(.horizontal) {
                        HStack {
                            ForEach(viewModel.ChipList) {
                                chip in FilterChip(
                                    filter: filter,
                                    name: chip.name,
                                    onTap: {
                                        filter = chip.name
                                    }
                                )
                            }
                        }
                    }
                    .padding(.leading, 20)

                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                        ForEach(viewModel.indonesianDishes) {
                            food in FoodCardView(name: food.name,
                                                 calorie: food.calorie,
                                                 sugar: food.sugar,
                                                 salt: food.salt,
                                                 fat: food.fat,
                                                 addFood: {
                                                     selectedFood.append(food)
                                                     calorieCount += food.calorie
                                                     updateCharacter()
                                                 })
                        }
                    }
                    .padding(.horizontal, 20)
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.top, 24)
        }
        .navigationBarBackButtonHidden(true)
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
    FoodLogging()
}
