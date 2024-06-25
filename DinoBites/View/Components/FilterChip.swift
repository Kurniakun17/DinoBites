//
//  FilterChip.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 23/06/24.
//

import SwiftUI

struct FilterChip: View {
    var filter: String
    var name: String
    var onTap: () -> Void

    var body: some View {
        Button(action: { onTap() }) {
            Text(name)
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .background(filter == name ? .prime : .semigray)
                .fontWeight(.bold)
                .foregroundStyle(filter == name ? .white : .gray)
                .transition(.identity)
        }
        .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}

#Preview {
    FilterChip(filter: "Jajanan", name: "Jajanan", onTap: {})
}
