//
//  PhoneView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/22/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct PhoneView : View {
    let models = PhoneModel.all()
    @State var isSpicy: Bool = false
    
    var body: some View {
        
        List {
            ToggleView(isSpicy: $isSpicy)
            ForEach(self.isSpicy ? models.filter({$0.hotOrNot == isSpicy}) : models) { eachModel in
                HStack {
                    ImageView(image: eachModel.image)
                    TextView(text: eachModel.text)
                    Spacer()
                    if(eachModel.hotOrNot) {
                        SpicyIcon()
                    }
                }
            }
        }
    }
}

struct ImageView: View {
    let image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
            .cornerRadius(18)
    }
}

struct TextView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.headline)
    }
}

struct ToggleView: View {
    @Binding var isSpicy: Bool
    
    var body: some View {
        Toggle(isOn: $isSpicy) {
            Text("Spicy")
                .font(.title)
        }
    }
}

struct SpicyIcon: View {
    var body: some View {
        Image("icon")
            .resizable()
            .frame(width: 35, height: 35, alignment: .center)
    }
}
