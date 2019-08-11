//
//  BarGraph.swift
//  Udemy
//
//  Created by tilekbek kadyrov on 8/10/19.
//  Copyright © 2019 tilekbek kadyrov. All rights reserved.
//

import Foundation
import SwiftUI

struct BarGraph: View {
    let reports = Report.all()
    
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            ForEach(reports.identified(by: \.self)) { report in
                BarView(report: report)
            }
        }.padding()
    }
}

struct BarView: View {
    let report: Report
    
    var body: some View {
        return VStack {
            Rectangle()
                .fill(Color .orange)
                .frame(width: 100, height: 180)
        }
    }
}
