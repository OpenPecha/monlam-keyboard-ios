//
// Created by Gabor Detari gabor@detari.dev
// Copyright (c) 2024 Gabor Detari. All rights reserved.
//

import Foundation
import KeyboardKit

class TibetanCustomActionHandler: KeyboardAction.StandardHandler {
    override func replacementAction(for gesture: Keyboard.Gesture, on action: KeyboardAction) -> KeyboardAction? {
        guard gesture == .release else { return nil }

        if let prevChar = keyboardContext.textDocumentProxy.documentContextBeforeInput?.last?.unicodeScalars.last,
           prevChar == "྄", case let .character(char) = action, let newChar = applySubjoin(char)
        {
            keyboardContext.textDocumentProxy.deleteBackward()
            return .character(newChar)
        }

        return nil
    }

    override func shouldInsertAutocompleteSpace() -> Bool {
        false
    }

    private func applySubjoin(_ char: String) -> String? {
        let consonantStart: UInt32 = 0x0F40
        let consonantEnd: UInt32 = 0x0F6A
        let subjoinedConsonantStart: UInt32 = 0x0F90

        if let scalar = char.unicodeScalars.first, scalar.value >= consonantStart, scalar.value <= consonantEnd {
            let newScalarValue = subjoinedConsonantStart + (scalar.value - consonantStart)

            if let newScalar = UnicodeScalar(newScalarValue) {
                return String(newScalar)
            }
        }

        return nil
    }
}
