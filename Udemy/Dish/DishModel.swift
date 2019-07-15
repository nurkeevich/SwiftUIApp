//
//  DishModel.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/14/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import Foundation
import SwiftUI

struct DishModel: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let isSpicy: Bool
}

extension DishModel {
    static func all() -> [DishModel] {
        return [
            DishModel(name: "Chicked", image: "dish1", isSpicy: false),
            DishModel(name: "Soup", image: "dish2", isSpicy: true),
            DishModel(name: "Salman", image: "dish3", isSpicy: false),
            DishModel(name: "Greek Salad", image: "dish4", isSpicy: false),
            DishModel(name: "Macaroni", image: "dish5", isSpicy: true)
        ]
    }
}
