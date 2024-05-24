import SwiftUI

struct ContentView: View {
    @State private var selectedLength: Int? = nil
    let lengths = [32, 16, 12, 8]

    var body: some View {
        VStack {
            Button(action: {
                ClipboardManager.doit(length: selectedLength ?? 32)
            }) {
                Text("new")
            }
            .cornerRadius(8)
            .background(Color.black.opacity(0.8))

            Button(action: {
                ClipboardManager._exit()
            }) {
                Text("exit")
            }
            .cornerRadius(8)
            .background(Color.black.opacity(0.8))

            Button(action: {
                ClipboardManager._clear()
            }) {
                Text("clear")
            }
            .cornerRadius(8)
            .background(Color.black.opacity(0.8))

            Menu("length") {
                ForEach(lengths, id: \.self) { length in
                    Button(action: {
                        self.selectedLength = length
                    }) {
                        HStack {
                            Text("\(length)")
                            if selectedLength == length {
                                Spacer()
                                Image(systemName: "checkmark")
                            }
                        }
                    }
                }
                
            }
            .frame(width: 80)
            .cornerRadius(8)
            .background(Color.black.opacity(0.8))
            .foregroundColor(.white)
        }
    }
}
