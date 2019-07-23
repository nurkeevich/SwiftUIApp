//
//  Hike.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/6/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import Foundation
import SwiftUI

struct Hike: Identifiable {
    
    let id = UUID()
    let name: String
    let imageURL: String
    let miles: Double
    
}

extension Hike {
    
    static func all() -> [Hike] {
        return [
            Hike(name: "Salmonberry Trail", imageURL: "image1", miles: 6),
            Hike(name: "Tom, Dick and Henry mountain", imageURL: "image2", miles: 5.2),
            Hike(name: "Tamanawas Falls", imageURL: "image3", miles: 5)
        ]
    }
}
