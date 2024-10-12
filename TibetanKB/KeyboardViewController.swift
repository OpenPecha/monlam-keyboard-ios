//
// Created by Gabor Detari gabor@detari.dev
// Copyright (c) 2024 Gabor Detari. All rights reserved.
//

import KeyboardKit
import SwiftUI
import SymSpellSwift
import UIKit

class KeyboardViewController: KeyboardInputViewController {
    override func viewDidLoad() {
        services.autocompleteService = TibetanAutocompleteService(context: state.autocompleteContext)
        services.layoutService = TibetanKeyboardLayoutService()
        services.styleProvider = TibetanKeyboardStyleProvider(keyboardContext: state.keyboardContext)
        services.keyboardBehavior = TibetanKeyboardBehavior(keyboardContext: state.keyboardContext)
        services.calloutService = TibetanCustomCalloutService(keyboardContext: state.keyboardContext)
        services.actionHandler = TibetanCustomActionHandler(controller: self)

        state.keyboardContext.localePresentationLocale = .current
        state.keyboardContext.spaceLongPressBehavior = .moveInputCursor
        state.feedbackContext.audioConfiguration = .enabled
        state.keyboardContext.isAutocapitalizationEnabled = false
    }

    override func viewWillSetupKeyboard() {
        super.viewWillSetupKeyboard()

        setup { controller in
            KeyboardView(
                state: controller.state,
                services: controller.services,
                buttonContent: { $0.view },
                buttonView: { $0.view },
                emojiKeyboard: { $0.view },
                toolbar: { params in
                    params.view
                }
            )
        }
    }
}
