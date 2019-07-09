//
//  MyView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/8/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct MyView : View {
    var body: some View {
        NavigationView{
            MyViewList()
            .navigationBarTitle(Text("Hikes"))
        }
    }
}

struct MyImageView: View {
    let image: String
    
    var body: some View {
        return Image(image)
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
            .cornerRadius(18)
    }
}

struct MyViewNameAndMiles: View {
    let name: String
    let mile: Double
    
    var body: some View {
        return VStack(alignment: .leading) {
            Text(name)
                .font(.headline)
            Text(String(format: "%.2f", mile) + " Miles")
        }
    }
}

struct MyViewCell: View {
    let model: MyViewModel
    
    var body: some View {
        return NavigationButton(destination: MyViewDetail(model: model)){
            HStack {
                MyImageView(image: model.image)
                MyViewNameAndMiles(name: model.name, mile: model.mile)
            }
        }
        
    }
}

struct MyViewList: View {
    let models = MyViewModel.all()
    
    var body: some View {
        List (models) { model in
            MyViewCell(model: model)
        }
    }
}
