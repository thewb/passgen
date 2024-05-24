//
//  actions.swift
//  pass-gen
//
//  Created by jb on 5/13/24.
//

import Foundation
import AppKit

class ClipboardManager {
    static func copyToClipboard(text: String) {
        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        pasteboard.setString(text, forType: .string)
    }
    
    static func generate(length: Int) -> String {
        let charset: [Character] = (32...126).compactMap{Character(UnicodeScalar($0))}
        let passw: [Character] = ((0..<length).map{_ in charset.randomElement()!})
        let rv = String(passw)
        return rv
    }
        
    static func doit(length: Int) {
        let pword = generate(length: length)
        copyToClipboard(text: pword)
    }
    
    static func _exit() {
        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
        exit(0)
    }
    
    static func _clear() {
        let pasteboard = NSPasteboard.general
        pasteboard.clearContents()
    }
}
