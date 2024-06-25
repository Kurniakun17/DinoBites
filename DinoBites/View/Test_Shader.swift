//
//  test.swiftui.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 25/06/24.
//

import SwiftUI

 struct Test_Shader: View {
    let startDate = Date()

    var body: some View {
        VStack {
            TimelineView(.animation) { _ in
                Circle()
                    .frame(width: 100, height: 200)
                    .foregroundStyle(.green)
                    .distortionEffect(ShaderLibrary.wave(.float(startDate.timeIntervalSinceNow)), maxSampleOffset: .zero)
            }
        }
    }
 }

 struct Test_Shader_Previews: PreviewProvider {
    static var previews: some View {
        Test_Shader()
    }
 }



#Preview {
    Test_Shader()
}
