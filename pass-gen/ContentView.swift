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
            Button(action: {
                ClipboardManager.doit()
            }) {
                Text("new password")
            }   .cornerRadius(8)
                .background(Color.black).opacity(0.8)
                                
            Button(action: {
                ClipboardManager._exit()
            }) {
                Text("exit")
            }   .cornerRadius(8)
                .background(Color.black).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                ClipboardManager._clear()
            }) {
                Text("clear")
            }   .cornerRadius(8)
                .background(Color.black).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
        }
    }
}


