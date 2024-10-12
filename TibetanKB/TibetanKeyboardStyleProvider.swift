//
// Created by Gabor Detari gabor@detari.dev
// Copyright (c) 2024 Gabor Detari. All rights reserved.
//

import Foundation
import KeyboardKit
import SwiftUI

class TibetanKeyboardStyleProvider: KeyboardStyle.StandardProvider {
    private let fontName = "Noto Serif Tibetan"

    override func buttonKeyboardFont(for action: KeyboardAction) -> KeyboardFont {
        switch action {
        case .space, .primary(.return), .keyboardType(.numeric):
            KeyboardFont(.custom(fontName, size: 14))
        case .character:
            KeyboardFont(.custom(fontName, size: 20))
        default: super.buttonKeyboardFont(for: action)
        }
    }

    override func buttonContentInsets(for action: KeyboardAction) -> EdgeInsets {
        switch action {
        case .space:
            EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0)
        case .primary(.return):
            EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0)
        case .keyboardType(.numeric):
            EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0)
        case .character:
            EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 0)
        default: super.buttonContentInsets(for: action)
        }
    }

    override func buttonText(for action: KeyboardAction) -> String? {
        switch action {
        case .space:
            "འགྲིག་"
        case .primary(.return):
            "འཔྲེང་འོག་"
        case let .keyboardType(type):
            switch type {
            case .numeric:
                "༡༢༣"
            case .alphabetic:
                "ཀཁག"
            default:
                super.buttonText(for: action)
            }
        default:
            super.buttonText(for: action)
        }
    }

    override func buttonImage(for action: KeyboardAction) -> Image? {
        switch action {
        case let .character(char):
            if char == "྄" {
                return Image("subjoin")
            }
        default: break
        }
        return super.buttonImage(for: action)
    }

    override var inputCalloutStyle: Callouts.InputCalloutStyle {
        .init(font: KeyboardFont(.custom(fontName, size: 25)))
    }

    override var actionCalloutStyle: Callouts.ActionCalloutStyle {
        .init(font: KeyboardFont(.custom(fontName, size: 20)), maxButtonSize: .init(width: 50, height: 50))
    }
}
