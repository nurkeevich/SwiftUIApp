//
//  SecondViewModel.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/8/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import Foundation
import SwiftUI

struct SecondViewModel : Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let mile: Double
}

extension SecondViewModel {
    static func all() -> [SecondViewModel] {
        return [
            SecondViewModel(image: "image1", name: "Everest", mile: 12),
            SecondViewModel(image: "image2", name: "Klimanjara", mile: 11),
            SecondViewModel(image: "image3", name: "Rocky", mile: 10)
        ]
    }
}
