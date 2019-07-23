//
//  ScoreView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/18/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct ScoreView : View {
    var body: some View {
        VStack {
            TextPreview()
            Buttons()
        }
    }
}

struct TextPreview: View {
    @EnvironmentObject private var model: ScoreModel
    
    var body: some View {
        Text("\(model.number)")
            .font(.largeTitle)
    }
}

struct Increment: View {
    @EnvironmentObject private var model: ScoreModel
    
    var body: some View {
        Button(action: incrementButton) {
            Text("Increment")
        }
    }
    
    private func incrementButton() {
        model.number += 1
    }
}

struct Decrement: View {
    @EnvironmentObject private var model: ScoreModel
    
    var body: some View {
        Button(action: decrementButton) {
            Text("Decrement")
        }
    }
    
    private func decrementButton() {
        self.model.number -= 1
    }
}

struct Buttons: View {
    var body: some View {
        HStack {
            Increment()
            Decrement()
        }
    }
}
