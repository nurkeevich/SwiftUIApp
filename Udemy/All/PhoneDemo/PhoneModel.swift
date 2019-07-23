//
//  PhoneModel.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/22/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import Foundation
import SwiftUI

struct PhoneModel: Identifiable {
    let id = UUID()
    let image: String
    let text: String
    let hotOrNot: Bool
}

extension PhoneModel {
    static func all() -> [PhoneModel] {
        return [
            PhoneModel(image: "dish1", text: "Chicken", hotOrNot: true),
            PhoneModel(image: "dish2", text: "Soup", hotOrNot: false),
            PhoneModel(image: "dish3", text: "Salman", hotOrNot: true),
            PhoneModel(image: "dish4", text: "Salad", hotOrNot: false),
            PhoneModel(image: "dish5", text: "Macaroni", hotOrNot: true)
        ]
    }
}
