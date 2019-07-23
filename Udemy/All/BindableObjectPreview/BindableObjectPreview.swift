//
//  BindableObjectPreview.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/16/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct BindableObjectPreview : View {
    @ObjectBinding var fancyTimer = FancyTimer()
    
    var body: some View {
        Text("\(fancyTimer.value)")
    }
}


