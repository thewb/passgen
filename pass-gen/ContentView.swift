//
//  ContentView.swift
//  pass-gen
//
//  Created by jb on 5/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("password is in clipboard")
                .frame(width: 214, height: 25)
                .fixedSize(horizontal: true, vertical: true)
                .cornerRadius(10)
                .multilineTextAlignment(.center)
                .onAppear {
                    ClipboardManager.doit()
                }
            Button(action: {
                ClipboardManager.doit()
            }) {
                Text("New Password")
            }       .cornerRadius(8)
            Button(action: {
                exit(0)
            }) {
                Text("EXIT")
            }       .cornerRadius(8)
        }
    }
}

#Preview {
    ContentView()
}
