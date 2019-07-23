//
//  FancyTimer.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/16/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class FancyTimer: BindableObject {
    let didChange = PassthroughSubject<Int,Never>()
    var value: Int = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (timer) in
            self.value += 1
            self.didChange.send(self.value)
        }
    }
}
