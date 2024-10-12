//
// Created by Gabor Detari gabor@detari.dev
// Copyright (c) 2024 Gabor Detari. All rights reserved.
//

import Foundation
import KeyboardKit

class TibetanCustomCalloutService: Callouts.StandardService {
    override func calloutActions(for action: KeyboardAction) -> [KeyboardAction] {
        switch action {
        case let .character(char):
            switch char {
            case "ར": return "\u{0F62}\u{0FBC}\u{0F6C}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "ད": return "\u{0F51}\u{0F52}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "ག": return "\u{0F42}\u{0F43}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "ཀ": return "\u{0F40}\u{0F69}\u{0F6B}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "ཛ": return "\u{0F5B}\u{0F5C}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "བ": return "\u{0F56}\u{0F57}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "་": return "\u{0F0C}\u{0F0B}\u{0FD2}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "ཌ": return "\u{0F4C}\u{0F4D}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "ཾ": return "\u{0F7E}\u{0F83}\u{0F82}\u{0F86}\u{0F87}\u{0F88}\u{0F89}\u{0F8A}\u{0F85}\u{0F8B}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "༼": return "\u{0F3C}(\u{0F3A}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "༽": return "\u{0F3D})\u{0F3B}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "༕": return "\u{0F15}\u{0F16}\u{0F17}\u{0F18}\u{0F19}\u{0F3E}\u{0F3F}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "”": return "«»„“”\"".chars.map { KeyboardAction.character($0) }
            case "࿂": return "\u{0FC2}\u{0FC0}\u{0FC1}\u{0FC3}\u{0FC4}\u{0FC5}\u{0FC6}\u{0FC7}\u{0FC8}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "༜": return "\u{0F1C}\u{0F1B}\u{0F1A}\u{0F1F}\u{0FCE}\u{0F1D}\u{0F1E}\u{0FCF}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "༴": return "\u{0F34}\u{0F35}\u{0F37}\u{0FBE}\u{0F36}\u{0F38}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "༡": return "༡1".chars.map { KeyboardAction.character($0) }
            case "༢": return "༢2".chars.map { KeyboardAction.character($0) }
            case "༣": return "༣3".chars.map { KeyboardAction.character($0) }
            case "༤": return "༤4".chars.map { KeyboardAction.character($0) }
            case "༥": return "༥5".chars.map { KeyboardAction.character($0) }
            case "༦": return "༦6".chars.map { KeyboardAction.character($0) }
            case "༧": return "༧7".chars.map { KeyboardAction.character($0) }
            case "༨": return "༨8".chars.map { KeyboardAction.character($0) }
            case "༩": return "༩9".chars.map { KeyboardAction.character($0) }
            case "༠": return "༠0".chars.map { KeyboardAction.character($0) }
            case "-": return "-–—•".chars.map { KeyboardAction.character($0) }
            case "/": return "/\\".chars.map { KeyboardAction.character($0) }
            case "$": return "$€£¥₩₽¢".chars.map { KeyboardAction.character($0) }
            case "།": return "\u{0f0d}\u{0f0e}\u{0f0f}\u{0f10}\u{0f11}\u{0f12}\u{0f13}\u{0f14}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            case "༄": return "\u{0F04}\u{0F05}\u{0F06}\u{0FD3}\u{0FD4}\u{0F07}\u{0FD1}\u{0F08}\u{0F01}\u{0F02}\u{0F03}".unicodeScalars.map { KeyboardAction.character(String($0)) }
            default: break
            }
        default: break
        }
        return super.calloutActions(for: action)
    }
}
