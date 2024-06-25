//
//  wave.metal
//  DinoBites
//
//  Created by Kurnia Kharisma Agung Samiadjie on 25/06/24.
//

#include <metal_stdlib>
#include <SwiftUI/SwiftUI_Metal.h>
using namespace metal;



[[ stitchable ]] float2 wave(float2 position, float time) {
    return position + float2(0, sin(time * 2 + position.x / 15)) * 5;
}
