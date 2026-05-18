import SwiftUI

struct ContentView: View {
    @State private var isOn = false

    var body: some View {
        RoundedRectangle(cornerRadius: 24)
            .fill(isOn ? Color.green.gradient : Color.gray.gradient)
            .overlay {
                Text(isOn ? "已点按" : "点我")
                    .font(.title2)
                    .foregroundStyle(.white)
            }
            .padding(40)
            .onTapGesture {
                isOn.toggle()
            }
    }
}
