//
//  RemoveButton.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/14/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct RemoveButton : View {
    @State var models: [TestModel]
    
    var body: some View {
        Button(action: removeModel) {
            Text("Remove")
        }
    }
    
    private func removeModel() {
        if models.count > 0 {
            models.removeLast()
        }
    }
}
