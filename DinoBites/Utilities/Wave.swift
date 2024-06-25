//
//  Wave.swift
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 25/06/24.
//

import SwiftUI

struct Wave: Shape {
    var progress: CGFloat
    var waveHeight: CGFloat
    var phase: CGFloat

    var animatableData: AnimatablePair<CGFloat, CGFloat> {
        get { AnimatablePair(progress, phase) }
        set {
            progress = newValue.first
            phase = newValue.second
        }
    }

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let width = rect.width
        let height = rect.height

        // Start at the bottom left corner
        path.move(to: CGPoint(x: 0, y: height))

        // Draw the wave
        for x in stride(from: 0, to: width, by: 1) {
            let relativeX = x / width
            let sine = sin(relativeX * 2 * .pi + phase)
            let y = height * (1 - progress) + sine * waveHeight
            path.addLine(to: CGPoint(x: x, y: y))
        }

        // Finish the path
        path.addLine(to: CGPoint(x: width, y: height))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.closeSubpath()

        return path
    }
}
