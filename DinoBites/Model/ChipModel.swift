//
//  ChipModel.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 23/06/24.
//

import Foundation
import SwiftUI

struct ChipModel: Identifiable {
    let id = UUID()
    @State var isSelected: Bool
    var name = ""
}


