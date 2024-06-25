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
                .padding(.vertical, 8)
                .background(filter == name ? .pink : .semigray)
                .foregroundStyle(filter == name ? .white : .gray)
                .transition(.identity)
        }
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    FilterChip(filter: "Jajanan", name: "Jajanan", onTap: {})
}
