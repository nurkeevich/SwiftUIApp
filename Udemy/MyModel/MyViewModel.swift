//
//  MyViewModel.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/8/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import Foundation
import SwiftUI

struct MyViewModel: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let mile: Double
}

extension MyViewModel {
    static func all() -> [MyViewModel] {
        return [
            MyViewModel(image: "image1", name: "Everest", mile: 12),
            MyViewModel(image: "image2", name: "Klimanjara", mile: 11),
            MyViewModel(image: "image3", name: "Rocky", mile: 10)
        ]
    }
}
