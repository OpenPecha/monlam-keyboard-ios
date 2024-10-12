//
// Created by Gabor Detari gabor@detari.dev
// Copyright (c) 2024 Gabor Detari. All rights reserved.
//

import Foundation
import KeyboardKit

class TibetanKeyboardBehavior: Keyboard.StandardBehavior {
    override func shouldSwitchToCapsLock(after _: Keyboard.Gesture, on _: KeyboardAction) -> Bool {
        false
    }
}
