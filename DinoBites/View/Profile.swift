//
//  Profile.swift
//  DinoBites
//
//  Created by Elsavira T on 25/06/24.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack {
            Image("grass")
                .resizable()
                .scaledToFill()
            Image("profilerec")
                .resizable()
                .scaledToFit()
            Text("Nutrient Goals")
                .font(.title).bold()
                .frame(width: 325, height: 50, alignment: .topLeading)
            Rectangle()
                .fill(.orange)
                .frame(width: 325, height: 150, alignment: .center)
                .cornerRadius(16)

            Text("Personal Information")
                .font(.title).bold()
                .frame(width: 325, height: 50, alignment: .topLeading)
            HStack{
                Text("Gender")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("Age")
                Text("Height")
                Text("Weight")
            }
            
        }
    }
}

#Preview {
    Profile()
}
