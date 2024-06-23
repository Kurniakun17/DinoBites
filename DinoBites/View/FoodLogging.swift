//
//  FoodLogging.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 21/06/24.
//

import SwiftUI

struct FoodLogging: View {
    @Environment(\.presentationMode) var presentationMode
    @State var selectedFilter = []
    @ObservedObject var viewModel = ChipViewModel()

    var body: some View {
        VStack(spacing: 0) {
            // Display Food Data
            VStack(spacing: 24) {
                HStack(alignment: .top) {
                    Image("character")
                        .resizable()
                        .frame(width: 120, height: 132)
                        .offset(x: 50)
                    VStack(spacing: 0) {
                        HStack {
                            Text("Feed Me!")
                                .font(.footnote)
                                .fontWeight(.bold)
                        }
                        .padding(14)
                        .frame(width: 100)
                        .background(.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .offset(x: 40, y: -20)

                        Rectangle()
                            .fill(.gray)
                            .rotationEffect(.degrees(55))
                            .frame(width: 20, height: 20)
                            .offset(x: 10, y: -34)
                    }
                }
                HStack {
                    VStack(alignment: .leading) {
                        Text("Vikri's Plate (0 item)")
                            .font(.caption)
                            .fontWeight(.semibold)
                        HStack {
                            Circle()
                                .fill(.green)
                                .frame(width: 20, height: 20)

                            Text("0 kcal")
                                .fontWeight(.bold)
                        }
                    }
                    Spacer()
                    NavigationLink {} label: {
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
                                RecentFoodView()
                                RecentFoodView()
                                RecentFoodView()
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
                                chip in FilterChip(isSelected: chip.isSelected, name: chip.name)
                            }
                        }
                    }
                    .padding(.leading, 20)

                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                        FoodCardView(name: "Ayam Teriyaki")
                        FoodCardView(name: "Ayam Teriyaki")
                        FoodCardView(name: "Ayam Teriyaki")
                        FoodCardView(name: "Ayam Teriyaki")
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
