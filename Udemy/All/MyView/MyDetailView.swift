//
//  MyDetailView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/8/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import Foundation
import SwiftUI

struct MyViewDetail: View {
    let model: MyViewModel
    @State var zoomed = false
    
    var body: some View {
        VStack {
            Image(model.image)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .tapAction{
                    withAnimation(.basic(duration: 0.4)) {
                    self.zoomed.toggle()
                    }
                }
            
            Text(model.name)
                .font(.largeTitle)
        }.navigationBarTitle(Text(model.name), displayMode: .inline)
    }
}
