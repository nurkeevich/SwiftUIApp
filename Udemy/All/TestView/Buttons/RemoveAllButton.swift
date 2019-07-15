//
//  RemoveAllButton.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/14/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct RemoveAllButton : View {
    @State var models: [TestModel]
    
    var body: some View {
        Button(action: removeAll) {
            Text("Remove All")
        }
    }
    
    private func removeAll() {
        models.removeAll()
    }
}
