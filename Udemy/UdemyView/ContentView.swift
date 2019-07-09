//
//  ContentView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 6/30/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        
        VStack(alignment: .center) {
            Image("image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
                .padding()
            
            
            Text("First line")
                .font(.largeTitle)
                .foregroundColor(.green)
            Text("Second line")
                .font(.title)
                .foregroundColor(.orange)
            HStack {
                Text("Left Side")
                Text("Right Side")
                    .padding(.all)
            }
        }
        
    }
}

