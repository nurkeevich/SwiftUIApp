//
//  StateAndBindingListExampleView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/11/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct StateAndBindingListExampleView : View {
    @State var models = [Model]()
    
    private func addTask() {
        self.models.append(Model(name: "wash the car"))
    }
    
    private func removeModel() {
        if models.count > 0 {
            models.removeLast()
        }
    }
    
    private func removeAll() {
        if models.count > 0  {
            models.removeAll()
        }
    }
    
    var body: some View {
        
        Group {
            HStack {
                Button(action: addTask) {
                    Text("Add Task")
                }
                
                Spacer()
                
                Button(action: removeAll) {
                    Text("Remove All")
                }
                
                Spacer()
                
                Button(action: removeModel) {
                    Text("Remove")
                }
            }.padding()
            
            List {
                
                ForEach(models) { index in
                    Text(index.name)
                }
            }
        }
        
    }
}


