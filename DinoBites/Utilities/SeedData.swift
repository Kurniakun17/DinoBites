//
//  SeedData.swift
//  DinoBites
//
//  Created by Dinda Ayu Syafitri on 23/06/24.
//

import Foundation
import SwiftData

func SeedData(context: ModelContext) {
    var data: [FoodItem] = [
        FoodItem(id: UUID(), name: "Ayam Asam Manis", calorie: 120.0, sugar: 8.0, salt: 0.8, fat: 4.0, portion: 100.0, units: "grams", imgName: "ayam-asam-manis", type: "protein"),
        FoodItem(id: UUID(), name: "Ayam Teriyaki", calorie: 150.0, sugar: 10.0, salt: 1.0, fat: 5.0, portion: 100.0, units: "grams", imgName: "ayam-teriyaki", type: "protein"),
        FoodItem(id: UUID(), name: "Ayam Bistik", calorie: 180.0, sugar: 2.0, salt: 1.2, fat: 9.0, portion: 100.0, units: "grams", imgName: "ayam-bistik", type: "protein"),
        FoodItem(id: UUID(), name: "Ayam Woku", calorie: 170.0, sugar: 1.0, salt: 1.5, fat: 10.0, portion: 100.0, units: "grams", imgName: "ayam-woku", type: "protein"),
        FoodItem(id: UUID(), name: "Ayam Goreng Mentega", calorie: 200.0, sugar: 2.0, salt: 1.1, fat: 15.0, portion: 100.0, units: "grams", imgName: "ayam-goreng-mentega", type: "protein"),
        FoodItem(id: UUID(), name: "Ayam Bakar", calorie: 160.0, sugar: 1.0, salt: 0.9, fat: 8.0, portion: 100.0, units: "grams", imgName: "ayam-bakar", type: "protein"),
        FoodItem(id: UUID(), name: "Ayam Gulai", calorie: 210.0, sugar: 1.0, salt: 1.3, fat: 16.0, portion: 100.0, units: "grams", imgName: "ayam-gulai", type: "protein"),
        FoodItem(id: UUID(), name: "Ikan Cakalang Suwir", calorie: 140.0, sugar: 1.0, salt: 1.2, fat: 7.0, portion: 100.0, units: "grams", imgName: "ikan-cakalang-suwir", type: "protein"),
        FoodItem(id: UUID(), name: "Ikan Dori Asam Manis", calorie: 130.0, sugar: 8.0, salt: 0.9, fat: 4.0, portion: 100.0, units: "grams", imgName: "ikan-dori-asam-manis", type: "protein"),
        FoodItem(id: UUID(), name: "Ikan Sarden Rica", calorie: 180.0, sugar: 2.0, salt: 1.5, fat: 10.0, portion: 100.0, units: "grams", imgName: "ikan-sarden-rica", type: "protein"),
        FoodItem(id: UUID(), name: "Ikan Tongkol Balado", calorie: 160.0, sugar: 1.0, salt: 1.3, fat: 8.0, portion: 100.0, units: "grams", imgName: "ikan-tongkol-balado", type: "protein"),
        FoodItem(id: UUID(), name: "Ikan Nila Bakar", calorie: 150.0, sugar: 1.0, salt: 0.8, fat: 6.0, portion: 100.0, units: "grams", imgName: "ikan-nila-bakar", type: "protein"),
        FoodItem(id: UUID(), name: "Ikan Tuna Rica", calorie: 170.0, sugar: 1.0, salt: 1.4, fat: 9.0, portion: 100.0, units: "grams", imgName: "ikan-tuna-rica", type: "protein"),
        FoodItem(id: UUID(), name: "Sosis Telur Rica", calorie: 250.0, sugar: 2.0, salt: 1.2, fat: 18.0, portion: 100.0, units: "grams", imgName: "sosis-telur-rica", type: "protein"),
        FoodItem(id: UUID(), name: "Otak Otak Rica", calorie: 220.0, sugar: 1.0, salt: 1.5, fat: 12.0, portion: 100.0, units: "grams", imgName: "otak-otak-rica", type: "protein"),
        FoodItem(id: UUID(), name: "Mapo Tofu Ayam", calorie: 190.0, sugar: 3.0, salt: 1.3, fat: 11.0, portion: 100.0, units: "grams", imgName: "mapo-tofu-ayam", type: "protein"),
        FoodItem(id: UUID(), name: "Sosis Oseng Bawang Cabe Rawit", calorie: 240.0, sugar: 2.0, salt: 1.1, fat: 16.0, portion: 100.0, units: "grams", imgName: "sosis-oseng-bawang-cabe-rawit", type: "protein"),
        FoodItem(id: UUID(), name: "Cumi Cabe Hijau", calorie: 180.0, sugar: 1.0, salt: 1.2, fat: 8.0, portion: 100.0, units: "grams", imgName: "cumi-cabe-hijau", type: "protein"),
        FoodItem(id: UUID(), name: "Mie Goreng Telur", calorie: 300.0, sugar: 5.0, salt: 1.0, fat: 10.0, portion: 100.0, units: "grams", imgName: "mie-goreng-telur", type: "carbo"),
        FoodItem(id: UUID(), name: "Telur Dadar", calorie: 180.0, sugar: 1.0, salt: 0.8, fat: 14.0, portion: 100.0, units: "grams", imgName: "telur-dadar", type: "protein"),
        FoodItem(id: UUID(), name: "Telur Ceplok Balado", calorie: 190.0, sugar: 2.0, salt: 0.9, fat: 15.0, portion: 100.0, units: "grams", imgName: "telur-ceplok-balado", type: "protein"),
        FoodItem(id: UUID(), name: "Telur Ceplok Pontianak", calorie: 200.0, sugar: 1.0, salt: 1.0, fat: 16.0, portion: 100.0, units: "grams", imgName: "telur-ceplok-pontianak", type: "protein"),
        FoodItem(id: UUID(), name: "Sayur Sawi Putih Telur", calorie: 60.0, sugar: 2.0, salt: 0.5, fat: 3.0, portion: 100.0, units: "grams", imgName: "sayur-sawi-putih-telur", type: "vegetable"),
        FoodItem(id: UUID(), name: "Sayur Krecek Tahu Tempe", calorie: 150.0, sugar: 2.0, salt: 1.2, fat: 8.0, portion: 100.0, units: "grams", imgName: "sayur-krecek-tahu-tempe", type: "vegetable"),
        FoodItem(id: UUID(), name: "Sayur Pok Coy", calorie: 40.0, sugar: 1.0, salt: 0.3, fat: 2.0, portion: 100.0, units: "grams", imgName: "sayur-pok-coy", type: "vegetable"),
        FoodItem(id: UUID(), name: "Sayur Toge", calorie: 45.0, sugar: 1.5, salt: 0.4, fat: 2.5, portion: 100.0, units: "grams", imgName: "sayur-toge", type: "vegetable"),
        FoodItem(id: UUID(), name: "Orek Tempe Balado", calorie: 200.0, sugar: 3.0, salt: 1.0, fat: 10.0, portion: 100.0, units: "grams", imgName: "orek-tempe-balado", type: "protein"),
        FoodItem(id: UUID(), name: "Orek Tempe Kering", calorie: 210.0, sugar: 4.0, salt: 1.1, fat: 11.0, portion: 100.0, units: "grams", imgName: "orek-tempe-kering", type: "protein"),
        FoodItem(id: UUID(), name: "Bakwan Jagung Manis", calorie: 150.0, sugar: 2.0, salt: 0.7, fat: 8.0, portion: 100.0, units: "grams", imgName: "bakwan-jagung-manis", type: "protein"),
        FoodItem(id: UUID(), name: "Bakwan Sayur", calorie: 140.0, sugar: 1.5, salt: 0.8, fat: 7.0, portion: 100.0, units: "grams", imgName: "bakwan-sayur", type: "protein"),
        FoodItem(id: UUID(), name: "Martabak Telur", calorie: 250.0, sugar: 2.0, salt: 1.0, fat: 15.0, portion: 100.0, units: "grams", imgName: "martabak-telur", type: "protein"),
        FoodItem(id: UUID(), name: "Kentang Mustofa", calorie: 180.0, sugar: 1.0, salt: 0.9, fat: 8.0, portion: 100.0, units: "grams", imgName: "kentang-mustofa", type: "protein"),
        FoodItem(id: UUID(), name: "Pisang Coklat", calorie: 250.0, sugar: 15.0, salt: 0.5, fat: 10.0, portion: 100.0, units: "grams", imgName: "pisang-coklat", type: "dessert"),
        FoodItem(id: UUID(), name: "Donat Gula Halus", calorie: 300.0, sugar: 20.0, salt: 0.7, fat: 15.0, portion: 100.0, units: "grams", imgName: "donat-gula-halus", type: "dessert"),
        FoodItem(id: UUID(), name: "Risoles Smoked Beef", calorie: 200.0, sugar: 2.0, salt: 1.0, fat: 12.0, portion: 100.0, units: "grams", imgName: "risoles-smoked-beef", type: "dessert"),
        FoodItem(id: UUID(), name: "Nasi Putih", calorie: 130.0, sugar: 0.1, salt: 0.01, fat: 0.3, portion: 100.0, units: "grams", imgName: "nasi-putih", type: "carbo"),
        FoodItem(id: UUID(), name: "Nasi Merah", calorie: 110.0, sugar: 0.1, salt: 0.01, fat: 0.5, portion: 100.0, units: "grams", imgName: "nasi-merah", type: "carbo"),
        FoodItem(id: UUID(), name: "Susu", calorie: 60.0, sugar: 5.0, salt: 0.1, fat: 3.0, portion: 100.0, units: "grams", imgName: "susu", type: "drink"),
        FoodItem(id: UUID(), name: "Teh Manis", calorie: 30.0, sugar: 7.0, salt: 0.02, fat: 0.0, portion: 100.0, units: "grams", imgName: "teh-manis", type: "drink"),
        FoodItem(id: UUID(), name: "Teh Tawar", calorie: 1.0, sugar: 0.0, salt: 0.0, fat: 0.0, portion: 100.0, units: "grams", imgName: "teh-tawar", type: "drink"),
        FoodItem(id: UUID(), name: "Kopi Susu", calorie: 50.0, sugar: 4.0, salt: 0.05, fat: 2.0, portion: 100.0, units: "grams", imgName: "kopi-susu", type: "drink"),
        FoodItem(id: UUID(), name: "Kopi Hitam", calorie: 2.0, sugar: 0.0, salt: 0.0, fat: 0.0, portion: 100.0, units: "grams", imgName: "kopi-hitam", type: "drink"),
        FoodItem(id: UUID(), name: "Air Putih", calorie: 0.0, sugar: 0.0, salt: 0.0, fat: 0.0, portion: 100.0, units: "grams", imgName: "air-putih", type: "drink"),
        FoodItem(id: UUID(), name: "Nasi Goreng", calorie: 200.0, sugar: 2.0, salt: 1.2, fat: 10.0, portion: 100.0, units: "grams", imgName: "nasi-goreng", type: "carbo"),
        FoodItem(id: UUID(), name: "Rendang", calorie: 300.0, sugar: 1.0, salt: 1.0, fat: 20.0, portion: 100.0, units: "grams", imgName: "rendang", type: "protein"),
        FoodItem(id: UUID(), name: "Sate Ayam", calorie: 250.0, sugar: 5.0, salt: 1.5, fat: 15.0, portion: 100.0, units: "grams", imgName: "sate-ayam", type: "protein"),
        FoodItem(id: UUID(), name: "Gado-Gado", calorie: 150.0, sugar: 3.0, salt: 1.0, fat: 8.0, portion: 100.0, units: "grams", imgName: "gado-gado", type: "vegetable"),
        FoodItem(id: UUID(), name: "Bakso", calorie: 100.0, sugar: 1.0, salt: 1.0, fat: 5.0, portion: 100.0, units: "grams", imgName: "bakso", type: "protein"),
        FoodItem(id: UUID(), name: "Mie Ayam", calorie: 180.0, sugar: 2.0, salt: 1.2, fat: 7.0, portion: 100.0, units: "grams", imgName: "mie-ayam", type: "carbo"),
        FoodItem(id: UUID(), name: "Es Campur", calorie: 150.0, sugar: 20.0, salt: 0.1, fat: 5.0, portion: 100.0, units: "grams", imgName: "es-campur", type: "dessert"),
        FoodItem(id: UUID(), name: "Bubur Ayam", calorie: 120.0, sugar: 1.0, salt: 0.8, fat: 4.0, portion: 100.0, units: "grams", imgName: "bubur-ayam", type: "carbo"),
        FoodItem(id: UUID(), name: "Pempek", calorie: 220.0, sugar: 3.0, salt: 1.2, fat: 12.0, portion: 100.0, units: "grams", imgName: "pempek", type: "protein")
    ]

    for datum in data {
        context.insert(datum)
    }
}
