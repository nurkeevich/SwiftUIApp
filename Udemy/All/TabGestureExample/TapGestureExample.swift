//
//  TabGestureExample.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 8/12/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct TapGestureExample : View {
    @State private var cardDragState: CGSize = CGSize.zero
    
    var body: some View {
       TapGestureCard(cardDragState: $cardDragState)
    }
}

struct TapGestureCard: View {
    @State private var colorChange: Bool = false
    @Binding var cardDragState: CGSize
    
    var body: some View {
        Rectangle()
            .fill(self.colorChange ? Color.orange : Color.green)
            .frame(width: 400, height: 700, alignment: .center)
            .cornerRadius(8)
        
            .offset(y: cardDragState.height)
            .animation(.spring())
            .gesture(TapGesture(count: 1)
                .onEnded({ self.colorChange.toggle() })
            )
            .gesture(DragGesture()
                .onChanged({ value in
                    self.cardDragState = value.translation
                })
                .onEnded({ value in
                    self.cardDragState = CGSize.zero
                })
            )
    }
}
