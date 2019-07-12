//
//  StateAndBinding.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 7/11/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct StateAndBindingView : View {
    @State var isTrue: Bool = false
    
    var body: some View {
        VStack {
            Text(isTrue ? "John" : "Mary")
                .font(.largeTitle)
            
            Button(action: {
                self.isTrue.toggle()
            }) {
                Text("Change Name")
            }
        }
    }
}

#if DEBUG
struct StateAndBinding_Previews : PreviewProvider {
    static var previews: some View {
        StateAndBindingView()
    }
}
#endif
