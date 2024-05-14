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
    
    static func generate() -> String {
        let charset: [Character] = (32...126).compactMap{Character(UnicodeScalar($0))}
        let passw: [Character] = ((0..<32).map{_ in charset.randomElement()!})
        let rv = String(passw)
        return rv
    }
        
    static func doit() {
        let pword = generate()
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
