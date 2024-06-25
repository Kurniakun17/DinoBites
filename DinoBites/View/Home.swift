//
//  Home.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 21/06/24.
//

import SwiftUI

struct Home: View {
    @State var coin = 200

    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 12) {
                    // Top header
                    HStack {
                        HStack(spacing: 12) {
                            Rectangle()
                                .fill(.semigray)
                                .frame(width: 60, height: 60)
                                .cornerRadius(12)

                            VStack(alignment: .leading) {
                                Text("Hello")
                                    .font(.body)
                                Text("Vikri")
                                    .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                                    .fontWeight(.bold)
                            }
                        }

                        HStack {
                            HStack(alignment: .center) {
                                Image("coin")
                                Text(String(coin))
                                    .fontWeight(.bold)
                            }
                            .padding(12)
                            .background(Color.semigray)
                            .cornerRadius(8)

                            Image("cart")
                                .padding(12)
                                .background(Color.semigray)
                                .cornerRadius(8)
                        }
                    }
                    // Calorie Day Tracker
                    HStack {
                        VStack {
                            Text("700")
                                .fontWeight(.bold)
                                .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                            Text("Remaining")
                        }
                        .frame(maxWidth: .infinity)

                        VStack(alignment: .leading) {
                            Text("0g")
                            Text("0mg")
                            Text("0g")
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 36)
                    .background(Color.semigray)
                    .cornerRadius(12)

                    // Diboding
                    VStack(alignment: .center) {
                        Text("Diboding is Hungry!")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)

                        Image("character")
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 40)
                    .background(Color.pink)
                    .cornerRadius(16)

                    VStack(alignment: .leading) {
                        Text("Selesaikan Tantanganmu!")
                            .foregroundStyle(Color.prime)
                            .fontWeight(.semibold)

                        ScrollView(.horizontal) {
                            HStack {
                                HStack {
                                    Rectangle()
                                        .fill(Color.prime)
                                        .frame(width: 52, height: 52)
                                        .clipShape(RoundedRectangle(cornerRadius: 6))
                                    VStack(alignment: .leading) {
                                        Text("Challenge Streak Logging 7 Hari")
                                            .font(.caption)

                                        HStack {
                                            ProgressView(value: 0.8)
                                            Text("1/7")
                                                .font(.caption)
                                        }
                                    }
                                }
                                .padding(.horizontal, 20)
                                .padding(.vertical, 12)
                                .frame(maxWidth: .infinity)
                                .background(.semigray)

                                HStack {
                                    Rectangle()
                                        .fill(Color.prime)
                                        .frame(width: 52, height: 52)
                                        .clipShape(RoundedRectangle(cornerRadius: 6))
                                    VStack(alignment: .leading) {
                                        Text("Challenge Streak Logging 7 Hari")
                                            .font(.caption)

                                        HStack {
                                            ProgressView(value: 0.8)
                                            Text("1/7")
                                                .font(.caption)
                                        }
                                    }
                                }
                                .padding(.horizontal, 20)
                                .padding(.vertical, 12)
                                .frame(maxWidth: .infinity)
                                .background(.semigray)
                            }
                        }
                    }
                    .padding(.top, 12)

                    NavigationLink {
                        FoodLogging()
                    } label: {
                        Text("Eat")
                            .foregroundStyle(.white)
                            .fontWeight(/*@START_MENU_TOKEN@*/ .bold/*@END_MENU_TOKEN@*/)
                            .font(.title3)
                    }
                    .padding(.vertical, 18)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/)
                    .background(.prime)
                    .clipShape(RoundedRectangle(cornerRadius: 12))

                    Spacer()
                }
                .padding(.horizontal, 22)
            }
        }
    }
}

#Preview {
    Home()
}
