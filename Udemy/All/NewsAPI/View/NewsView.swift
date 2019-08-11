//
//  NewsView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/28/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct NewsView : View {
    
    @ObjectBinding var model = ArticleListViewModel()
    
    var body: some View {
        List(model.articles) { article in
            VStack (alignment: .leading) {
                Text(article.title)
                    .lineLimit(nil)
                Text(article.description)
                    .foregroundColor(.secondary)
                    .lineLimit(nil)
            }
        }
    }
}

