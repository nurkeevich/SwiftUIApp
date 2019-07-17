

import SwiftUI

struct BindingView : View {
    let model = PlayModel(name: "Macbreak Weekly", track: "WWDC 2019")
    @State var isPlaying = false
    
    var body: some View {
        VStack {
            Text(model.name)
                .font(.title)
                .foregroundColor(isPlaying ? .green : .black)
            Text(model.track)
                .foregroundColor(.secondary)
            ButtonBinding(isPlaying: $isPlaying)
        }
    }
}

struct ButtonBinding: View {
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Text("Play")
        }.padding(12)
    }
}

