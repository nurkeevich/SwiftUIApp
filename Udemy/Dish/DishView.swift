//
//  DishView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/14/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct DishView : View {
    let dishes = DishModel.all()
    @State private var isSpicy = false
    
    var body: some View {
        
        Group {
            Toggle(isOn: $isSpicy) {
                Text("Spicy Dishes")
                    .font(.title)
            }.padding()
            
            List {
                
                ForEach(dishes) { eachDish in
                    HStack {
                        DishImageView(image: eachDish.image)
                        HStack {
                            DishName(name: eachDish.name)
                            Spacer()
                            if(eachDish.isSpicy) {
                                DishIconImage(image: "icon")
                            }
                        }
                    }
                }
            }
        }
    }
}


struct DishImageView: View {
    let image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100, alignment: .center)
    }
}

struct DishName: View {
    let name: String
    
    var body: some View {
        Text(name)
            .font(.headline)
    }
}

struct DishIconImage: View {
    let image: String
    var body: some View {
        Image(image)
            .resizable()
            .frame(width: 35, height: 35, alignment: .center)
            .aspectRatio(contentMode: .fit)
    }
}
