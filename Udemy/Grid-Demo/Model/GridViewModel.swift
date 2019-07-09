//
//  GridViewModel.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/8/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import Foundation
import SwiftUI

struct GridViewModel: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let image: String
}

extension GridViewModel {
    static func all() -> [GridViewModel] {
        return [
            GridViewModel(name: "cake", price: 12, image: "cake"),
            GridViewModel(name: "lion", price: 32, image: "lion"),
            GridViewModel(name: "penguin", price: 14, image: "penguin"),
            GridViewModel(name: "fish", price: 32, image: "fish")
        ]
    }
}
