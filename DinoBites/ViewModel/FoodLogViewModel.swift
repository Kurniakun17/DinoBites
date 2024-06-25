//
//  ChipViewModel.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 23/06/24.
//

import SwiftUI
import SwiftData

class FoodLogViewModel: ObservableObject {
    @Published var ChipList = [ChipModel(isSelected: true, name: "Carbs"),
                               ChipModel(isSelected: false, name: "Protein"),
                               ChipModel(isSelected: false, name: "Veggie"),
                               ChipModel(isSelected: false, name: "Dessert"),
                               ChipModel(isSelected: false, name: "Beverages")]
    
    
    let recentFood: [FoodItem] = [
        //        FoodItem(id: UUID(), name: "Apple", calorie: 52, sugar: 14, salt: 0, fat: 0.2, portion: 1, units: "piece", imgName: "apple", type: "Fruit"),
//        FoodItem(id: UUID(), name: "Banana", calorie: 96, sugar: 27, salt: 1, fat: 0.3, portion: 1, units: "piece", imgName: "banana", type: "Fruit"),
//        FoodItem(id: UUID(), name: "Chicken Breast", calorie: 165, sugar: 0, salt: 74, fat: 3.6, portion: 100, units: "grams", imgName: "chicken_breast", type: "Meat"),
//        FoodItem(id: UUID(), name: "Broccoli", calorie: 55, sugar: 2.6, salt: 33, fat: 0.6, portion: 100, units: "grams", imgName: "broccoli", type: "Vegetable"),
//        FoodItem(id: UUID(), name: "Almonds", calorie: 579, sugar: 4.4, salt: 1, fat: 49, portion: 100, units: "grams", imgName: "almonds", type: "Nut"),
//        FoodItem(id: UUID(), name: "Salmon", calorie: 206, sugar: 0, salt: 59, fat: 13, portion: 100, units: "grams", imgName: "salmon", type: "Fish"),
//        FoodItem(id: UUID(), name: "Orange", calorie: 47, sugar: 9, salt: 0, fat: 0.1, portion: 1, units: "piece", imgName: "orange", type: "Fruit"),
//        FoodItem(id: UUID(), name: "Eggs", calorie: 155, sugar: 1.1, salt: 124, fat: 11, portion: 100, units: "grams", imgName: "eggs", type: "Protein")
    ]

    let indonesianDishes: [FoodItem] = [
        //        FoodItem(id: 1, name: "Nasi Goreng", calorie: 250, sugar: 5, salt: 500, fat: 10, portion: 1, units: "plate", imgName: "nasi_goreng", type: "Main Course"),
//        FoodItem(id: UUID(), name: "Rendang", calorie: 468, sugar: 2, salt: 1000, fat: 36, portion: 100, units: "grams", imgName: "rendang", type: "Main Course"),
//        FoodItem(id: UUID(), name: "Satay", calorie: 150, sugar: 3, salt: 400, fat: 10, portion: 100, units: "grams", imgName: "satay", type: "Main Course"),
//        FoodItem(id: UUID(), name: "Gado-Gado", calorie: 150, sugar: 5, salt: 300, fat: 10, portion: 1, units: "plate", imgName: "gado_gado", type: "Salad"),
//        FoodItem(id: UUID(), name: "Soto Ayam", calorie: 200, sugar: 3, salt: 700, fat: 8, portion: 1, units: "bowl", imgName: "soto_ayam", type: "Soup"),
//        FoodItem(id: UUID(), name: "Bakso", calorie: 250, sugar: 2, salt: 800, fat: 15, portion: 1, units: "bowl", imgName: "bakso", type: "Soup"),
//        FoodItem(id: UUID(), name: "Tempeh", calorie: 200, sugar: 0, salt: 20, fat: 10, portion: 100, units: "grams", imgName: "tempeh", type: "Side Dish"),
//        FoodItem(id: UUID(), name: "Pecel Lele", calorie: 300, sugar: 1, salt: 600, fat: 20, portion: 1, units: "plate", imgName: "pecel_lele", type: "Main Course")
    ]
}
