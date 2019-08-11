//
//  Article.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/30/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import Foundation

struct NewsResponse: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let title: String
    let description: String?
}
