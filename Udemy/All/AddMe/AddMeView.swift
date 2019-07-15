//
//  AddMeView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/14/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct AddMeView : View {
    @State var models = [AddMeModel]()
    
    var body: some View {
        Group {
            HStack {
                Button(action: add) {
                    Text("Add")
                }
                Spacer()
                Button(action: remove) {
                    Text("Remove")
                }
                Spacer()
                Button(action: removeAll) {
                    Text("Remove All")
                }
            }.padding()
            
            List (models) { eachModel in
                Text(eachModel.name)
            }
        }
    }
    
    private func add() {
        models.append(AddMeModel(name: "add some text"))
    }
    
    private func remove() {
        if models.count > 0 {
            models.removeLast()
        }
    }
    
    private func removeAll() {
        models.removeAll()
    }
}

