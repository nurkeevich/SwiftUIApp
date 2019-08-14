//
//  MagGestureView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 8/13/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct MagGestureView : View {
    var body: some View {
        MagImageViewExample()
    }
}

struct MagImageViewExample: View {
    @State private var scale: Length = 1
    var body: some View {
        Image("dish5")
            .resizable()
            .scaleEffect(self.scale)
            .frame(width: 400, height: 500, alignment: .center)
            .gesture(MagnificationGesture()
                .onChanged({ value in
                    self.scale = value.magnitude
                })
            )
    }
}
