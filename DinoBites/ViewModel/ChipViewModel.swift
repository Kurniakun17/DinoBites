//
//  ChipViewModel.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 23/06/24.
//

import SwiftUI

class ChipViewModel: ObservableObject {
    @Published var ChipList = [ChipModel(isSelected: true, name: "Rekomendasi"),
                               ChipModel(isSelected: false, name: "Makanan Berat"),
                               ChipModel(isSelected: false, name: "Makanan Ringan"),
                               ChipModel(isSelected: false, name: "Cemilan")]
}
