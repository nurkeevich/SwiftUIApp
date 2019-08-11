//
//  DataExample.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 8/10/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import Foundation

struct DataExample: Hashable {
    let year: String
    let revenue: Double
}

extension DataExample {
    static func all() -> [DataExample] {
        return [
            DataExample(year: "2001", revenue: 100),
            DataExample(year: "2002", revenue: 50),
            DataExample(year: "2003", revenue: 150),
            DataExample(year: "2004", revenue: 80)
        ]
    }
}
