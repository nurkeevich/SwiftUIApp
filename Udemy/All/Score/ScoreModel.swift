//
//  ScoreModel.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/18/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ScoreModel: BindableObject {
    var didChange = PassthroughSubject<Int, Never>()
    var number: Int = 0 {
        didSet {
            didChange.send(self.number)
        }
    }
}
