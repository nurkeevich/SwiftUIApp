//
//  SecondView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/8/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct SecondView : View {
    var body: some View {
        NavigationView {
            SecondViewList()
            .navigationBarTitle(Text("Mountains"))
        }
    }
}

struct SecondViewImage: View {
    let image: String
    
    var body: some View {
        return Image(image)
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
            .cornerRadius(18)
    }
}

struct SecondViewNameAndMile: View {
    let name: String
    let mile: Double
    
    var body: some View {
        return VStack (alignment: .leading) {
            Text(name)
                .font(.headline)
            Text(String(format: "%.2f", mile) + " Miles")
        }
    }
}

struct SecondViewCell: View {
    let model: SecondViewModel
    
    var body: some View {
        return NavigationButton(destination: SecondViewDetailView(model: model)){
            HStack {
                SecondViewImage(image: model.image)
                SecondViewNameAndMile(name: model.name, mile: model.mile)
            }
        }
    }
}

struct SecondViewList: View {
    let models = SecondViewModel.all()
    
    var body: some View {
        List(models) { model in
            SecondViewCell(model: model)
        }
    }
}
