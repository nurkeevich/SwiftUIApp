//
//  GridContentView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/8/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct GridContentView : View {
    
    let images = GridViewModel.all()
    
    var body: some View {
        
        let chunkedImages = images.chunked(into: 2)
        
        return List {
//            Row
            ForEach(0..<chunkedImages.count) { index in
                HStack {
//            Column
                    ForEach(chunkedImages[index]) { eachImage in
                        Image(eachImage.image)
                            .resizable()
                            .scaledToFit()
                    }
                }
            }
            
        }
    }
}

