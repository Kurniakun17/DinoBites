//
//  ChipViewModel.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 23/06/24.
//

import SwiftUI

class FoodLogViewModel: ObservableObject {
    @Published var ChipList = [ChipModel(isSelected: true, name: "Rekomendasi"),
                               ChipModel(isSelected: false, name: "Makanan Berat"),
                               ChipModel(isSelected: false, name: "Makanan Ringan"),
                               ChipModel(isSelected: false, name: "Cemilan")]
    
    let recentFood: [FoodModel] = [
        FoodModel(id: 1, name: "Apple", calorie: 52, sugar: 10.39, salt: 0.01, fat: 0.17),
        FoodModel(id: 2, name: "Banana", calorie: 96, sugar: 12.23, salt: 0.01, fat: 0.33),
        FoodModel(id: 3, name: "Carrot", calorie: 41, sugar: 4.74, salt: 0.06, fat: 0.24),
        FoodModel(id: 4, name: "Donut", calorie: 452, sugar: 25.0, salt: 0.5, fat: 25.0),
        FoodModel(id: 5, name: "Egg", calorie: 155, sugar: 1.12, salt: 0.08, fat: 11.0)
    ]
    
    let indonesianDishes: [FoodModel] = [
        FoodModel(id: 1, name: "Nasi Goreng", calorie: 350, sugar: 5.0, salt: 2.0, fat: 10.0),
        FoodModel(id: 2, name: "Satay", calorie: 200, sugar: 3.0, salt: 1.5, fat: 15.0),
        FoodModel(id: 3, name: "Rendang", calorie: 500, sugar: 2.5, salt: 1.8, fat: 35.0),
        FoodModel(id: 4, name: "Gado-Gado", calorie: 300, sugar: 8.0, salt: 1.0, fat: 20.0),
        FoodModel(id: 5, name: "Soto Ayam", calorie: 150, sugar: 2.0, salt: 1.2, fat: 5.0),
        FoodModel(id: 6, name: "Bakso", calorie: 250, sugar: 1.0, salt: 2.5, fat: 10.0),
        FoodModel(id: 7, name: "Ayam Goreng", calorie: 400, sugar: 1.0, salt: 2.0, fat: 25.0),
        FoodModel(id: 8, name: "Pecel Lele", calorie: 350, sugar: 2.0, salt: 1.8, fat: 15.0),
        FoodModel(id: 9, name: "Mie Goreng", calorie: 300, sugar: 6.0, salt: 2.5, fat: 12.0),
        FoodModel(id: 10, name: "Tahu Tempe", calorie: 250, sugar: 1.5, salt: 1.0, fat: 8.0)
    ]
}
