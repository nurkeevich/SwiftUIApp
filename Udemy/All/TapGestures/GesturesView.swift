//
//  GesturesView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 8/11/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct GesturesView : View {
    @State private var colorChange: Bool = false
    @State private var cardDragState: CGSize = CGSize.zero
    
    var body: some View {
        RectangleViewExample(colorChange: $colorChange)
            .offset(y: self.cardDragState.height)
            .animation(.spring())
            .gesture(TapGesture(count: 1)
                .onEnded({
                    self.colorChange.toggle()
                })
            )
            .gesture(DragGesture()
                .onChanged({ value in
                    self.cardDragState = value.translation
                })
                .onEnded({ value in
                    self.cardDragState = CGSize.zero
                    self.colorChange.toggle()
                })
            )
    }
}

struct RectangleViewExample: View {
    @Binding var colorChange: Bool
    
    var body: some View {
        Rectangle()
            .fill(self.colorChange ? Color.green : Color.orange)
            .frame(width: 400, height: 700, alignment: .center)
            .cornerRadius(8)
    }
}
