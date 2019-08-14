//
//  RotationGestureExample.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 8/13/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct RotationGestureExample : View {
    @State private var rotateCard: Double = 0
    
    var body: some View {
        RotationGestureCard()
            .rotationEffect(Angle(degrees: self.rotateCard))
            .gesture(RotationGesture()
                .onChanged({ value in
                    self.rotateCard = value.degrees
                })
            )
    }
}

struct RotationGestureCard: View {
    var body: some View {
        Rectangle()
            .fill(Color.orange)
            .frame(width: 400, height: 700, alignment: .center)
            .cornerRadius(8)
    }
}
