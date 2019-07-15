//
//  AddMeButton.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/13/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct AddMeButton : View {
    @State var models: [TestModel]
    
    var body: some View {
        Button(action: addMe) {
            Text("Add Me")
        }
    }
    
    private func addMe() {
        models.append(TestModel(name: "Add some tast"))
    }
}


