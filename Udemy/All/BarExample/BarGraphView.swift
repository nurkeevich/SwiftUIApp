//
//  BarGraphView.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 8/11/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import SwiftUI

struct BarGraphView : View {
    let dataExamples = DataExample.all()
    
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            ForEach(self.dataExamples.identified(by: \.self)) { dataExample in
                RectangleView(dataExample: dataExample)
            }
        }
    }
}

struct RectangleView: View {
    let dataExample: DataExample
    let maxNumber = DataExample.all().map({return $0.revenue}).max()!
    @State private var showGraph: Bool = false
    
    var body: some View {
        let percent = (dataExample.revenue * 100) / self.maxNumber
        return Rectangle()
                .fill(Color.blue)
            .frame(width: 25, height: self.showGraph ? Length(350 * (percent/100)) : Length(0), alignment: .center)
                .cornerRadius(8)
            .onAppear {
                withAnimation(.basic(duration: 2.0)) {
                    self.showGraph.toggle()
                }
        }
    }
}
