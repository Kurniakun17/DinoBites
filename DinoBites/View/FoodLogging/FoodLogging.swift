//
//  FoodLogging.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 21/06/24.
//

import SwiftData
import SwiftUI

struct FoodLogging: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.modelContext) var modelContext
    @Query var foodsList: [FoodItem]
    @ObservedObject var viewModel = FoodLogViewModel()
    @State var filter = "Carbs"
    @State var selectedFood: [FoodItem] = []
    @State var characterMood = ""
    @State var isCooldownActive = false
    @State var calorieCount = Double(0)
    
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
            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 16) {
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
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Try these!")
                            .font(.title)
                            .fontWeight(.bold)
                        
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
                    .padding(20)
                    
                    Button(action: addSamples) {
                        Text("Add Item")
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.top, 24)
        }
        .onAppear {
            print(foodsList)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                        .padding(14)
                }
            }
            
            ToolbarItem(placement: .principal) {
                Text("Food")
                    .font(.title)
                    .fontWeight(.bold)
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {}) {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.black)
                        .fontWeight(.semibold)
                        .padding(14)
                }
            }
        }
    }

    func addSamples() {
        let nasiGoreng = FoodItem(id: 1, name: "Nasi Goreng", calorie: 250.0, sugar: 5.0, salt: 500.0, fat: 10.0, portion: 1, units: "plate", imgName: "nasi_goreng", type: "Main Course")
    }
}

#Preview {
    FoodLogging()
}

// Display Food Data
//            VStack(spacing: 24) {
//                HStack {
//                    VStack(alignment: .leading) {
//                        Text("Vikri's Plate (\(String(selectedFood.count)) item)")
//                            .font(.caption)
//                            .fontWeight(.semibold)
//                        HStack {
//                            Circle()
//                                .fill(calorieCount < 500 ? .green : .red)
//                                .frame(width: 20, height: 20)
//
//                            Text(String(calorieCount) + " kcal")
//                                .fontWeight(.bold)
//                        }
//                    }
//                    Spacer()
//                    NavigationLink {
//                        FoodReview(selectedFood: $selectedFood, calorieCount: calorieCount)
//                    } label: {
//                        Text("Review")
//                            .foregroundStyle(.white)
//                            .fontWeight(.bold)
//                            .padding(.vertical, 12)
//                            .padding(.horizontal, 24)
//                            .background(.prime)
//                            .clipShape(RoundedRectangle(cornerRadius: 12))
//                    }
//                }
//            }
//            .padding(.top, 12)
//            .padding(.horizontal, 20)
//            .background(.purplefade)
