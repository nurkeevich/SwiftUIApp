//
//  TestView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/13/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct TestView : View {
    @State var models = [TestModel]()
    
    var body: some View {
        Group {
            HStack {
                AddMeButton(models: models)
                Spacer()
                RemoveButton(models: models)
                RemoveAllButton(models: models)
            }
            
            List {
                ForEach(models) { eachModel in
                    Text(eachModel.name)
                }
            }
        }
    }
}
