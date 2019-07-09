//
//  SecondViewDetailView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/8/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import Foundation
import SwiftUI

struct SecondViewDetailView: View {
    let model: SecondViewModel
    @State var isZoomed = true
    
    var body: some View {
        return VStack {
            NavigationView {
                Image(model.image)
                    .resizable()
                    .aspectRatio(contentMode: isZoomed ? .fit : .fill)
                    .tapAction {
                        withAnimation(.basic(duration: 0.4)){
                            self.isZoomed.toggle()
                        }
                    }
                Text(model.name)
                    .font(.largeTitle)
            }.navigationBarTitle(Text(model.name), displayMode: .inline)
        }
    }
}
