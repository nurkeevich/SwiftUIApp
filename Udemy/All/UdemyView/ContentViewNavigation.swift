//
//  ContentViewNavigation.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/6/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct ContentViewNavigation : View {
    
    let hikes = Hike.all()
    
    var body: some View {
        NavigationView {
            List (hikes) { eachHike in
                HStack {
                    HikeCell(eachHike: eachHike)
                }
            }
            .navigationBarTitle(Text("Hikings"))
        }
    }
}

struct HikeCell : View {
    let eachHike: Hike
    
    var body: some View {
        return NavigationButton(destination: Text(eachHike.name)) {
            HStack {
                HikeImageView(image: eachHike.imageURL)
                HikeNameAndMiles(name: eachHike.name, mile: eachHike.miles)
            }
        }
    }
}

struct HikeImageView : View {
    let image : String
    
    var body: some View {
        return Image(image)
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
            .cornerRadius(18)
        
    }
}

struct HikeNameAndMiles: View {
    let name : String
    let mile : Double
    
    var body: some View {
        return VStack(alignment: .leading) {
            Text(name)
            Text(String(format: "%.2f", mile))
        }
    }
}
