//
//  FilterChip.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 23/06/24.
//

import SwiftUI

struct FilterChip: View {
    @State var isSelected: Bool
    var name: String

    var body: some View {
        Button(action: { isSelected.toggle() }) {
            Text(name)
                .padding(.horizontal, 16)
                .padding(.vertical, 4)
                .background(isSelected ? .semigray : .pink)
                .foregroundStyle(isSelected ? .gray : .white)
                .transition(.identity)
        }
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    FilterChip(isSelected: false, name: "Jajanan")
}

