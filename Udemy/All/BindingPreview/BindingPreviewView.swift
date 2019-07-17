//
//  BindingPreviewView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/16/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct BindingPreviewView : View {
    let model = BindingPreviewModel(title: "Macbook Pro 2018", subtitle: "The Best")
    @State var isChanged = false
    
    var body: some View {
        VStack {
            TitleView(model: model, isChanged: $isChanged)
            SubtitleView(model: model)
            ChangeButton(isChanged: $isChanged)
        }
    }
}

struct TitleView: View {
    let model: BindingPreviewModel
    @Binding var isChanged: Bool
    
    var body: some View {
        Text(model.title)
            .font(.title)
            .foregroundColor(self.isChanged ? .red : .black)
    }
}

struct SubtitleView: View {
    let model : BindingPreviewModel
    
    var body: some View {
        Text(model.subtitle)
            .foregroundColor(.gray)
    }
}

struct ChangeButton: View {
    @Binding var isChanged: Bool
    
    var body: some View {
        Button(action: changeColor) {
            Text("Change Color")
        }.padding(12)
    }
    
    private func changeColor() {
        self.isChanged.toggle()
    }
}
