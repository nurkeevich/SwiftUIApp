//
//  ArticleListViewModel.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 8/10/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ArticleListViewModel: BindableObject {
    
    let didChange = PassthroughSubject <ArticleListViewModel, Never>()
    
    init() {
        fetchTopHeadlines()
    }
    
    var articles = [ArticleViewModel]() {
        didSet {
            didChange.send(self)
        }
    }
    
    private func fetchTopHeadlines() {
        let urlAPI = "https://newsapi.org/v2/top-headlines?country=us&apiKey=1e32dcb237e54a409f3b46ec07149d12"
        guard let url = URL(string: urlAPI) else {
            fatalError("URL is not correct!")
        }
        
        Webservice().loadTopHeadlines(url: url) { articles in
            if let articles = articles {
                self.articles = articles.map(ArticleViewModel.init)
            }
        }
    }
}

class ArticleViewModel: Identifiable {
    let id = UUID()
    
    let article: Article
    
    init(article: Article) {
        self.article = article
    }
    
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description ?? ""
    }
}
