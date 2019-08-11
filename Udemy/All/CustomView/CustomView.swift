

import SwiftUI

struct CustomView : View {
    var body: some View {
        VStack {
            Circle()
                .fill(Color .red)
                .frame(width: 200, height: 200, alignment: .center)
            Circle()
                .stroke(Color .green, lineWidth: 16)
                .padding()
            
            Rectangle()
                .stroke(Color .orange, lineWidth: 16)
                .padding()
        }
    }
}

