//
//  CharacterLogging.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 23/06/24.
//

import SwiftUI

func generateText(mood: String) -> String {
    switch mood {
        case "_love":
            return "Yummy!"
        case "_overcal":
            return "too much calories!"
        case "":
            return "Feed Me!"
        default:
            return "Feed Me!"
    }
}

struct CharacterLogView: View {
    @Binding var mood: String
    var body: some View {
        HStack(alignment: .top) {
            ZStack {
                Image("character" + mood)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160)
                    .offset(x: 70)
                if mood == "_love" {
                    Love()
                    Love()
                    Love()
                    Love()
                    Love()
                    Love()
                }
            }

            VStack(spacing: 0) {
                HStack {
                    Text(generateText(mood: mood))
                        .font(.footnote)
                        .fontWeight(.bold)
                }
                .padding(14)
                .frame(width: 100)
                .background(.semigray)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .offset(x: 40, y: -20)

                Rectangle()
                    .fill(.semigray)
                    .rotationEffect(.degrees(55))
                    .frame(width: 20, height: 20)
                    .offset(x: 10, y: -34)
            }
        }
        .onChange(of: mood) {
            print(mood)
        }
    }
}

struct Love: View {
    @State var offsetY = 0 + .random(in: 0 ... 12) * 10
    @State var offsetX = 0 + .random(in: -3 ... 10) * 10
    @State var opacityVal = 1.0
    @State var scaleVal = 1 + .random(in: 1 ... 10) * 0.1

    var body: some View {
        Image("love")
            .offset(x: CGFloat(offsetX), y: CGFloat(offsetY))
            .opacity(opacityVal)
            .scaleEffect(scaleVal)
            
            .onAppear {
                withAnimation(.spring(duration: 1.5)) {
                    offsetY = (.random(in: -11 ... -8) * 10)
                }

                withAnimation(.spring(duration: 2.5)) {
                    opacityVal = 0
                }
            }
    }
}

#Preview {
    CharacterLogView(mood: .constant("_love"))
}
