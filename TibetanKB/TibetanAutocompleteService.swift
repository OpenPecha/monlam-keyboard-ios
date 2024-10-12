//
// Created by Gabor Detari gabor@detari.dev
// Copyright (c) 2024 Gabor Detari. All rights reserved.
//

import Foundation
import KeyboardKit
import SymSpellSwift

class TibetanAutocompleteService: AutocompleteService {
    private var initialized = false
    init(context: AutocompleteContext) {
        self.context = context
        symSpell = SymSpell(maxDictionaryEditDistance: 2)
        DispatchQueue.global(qos: .userInitiated).async {
            if let url = Bundle.main.url(forResource: "gmd", withExtension: "txt") {
                try? self.symSpell.loadDictionary(from: url, termCount: 27000)
                self.initialized = true
            }
        }
    }

    private var context: AutocompleteContext
    private var symSpell: SymSpell

    var locale: Locale = .current

    var canIgnoreWords: Bool { false }
    var canLearnWords: Bool { false }
    var ignoredWords: [String] = []
    var learnedWords: [String] = []

    func hasIgnoredWord(_: String) -> Bool { false }
    func hasLearnedWord(_: String) -> Bool { false }
    func ignoreWord(_: String) {}
    func learnWord(_: String) {}
    func removeIgnoredWord(_: String) {}
    func unlearnWord(_: String) {}

    func autocompleteSuggestions(for text: String) async throws -> [Autocomplete.Suggestion] {
        guard initialized, text.count > 0 else { return [] }
        var suggestions = Array(symSpell.complete(text).prefix(3))
        if suggestions.count < 3 {
            suggestions += symSpell.lookup(text, verbosity: .closest, maxEditDistance: 2)
        }

        suggestions = Array(Set(suggestions))

        suggestions.sort { item1, item2 in
            item1.count > item2.count
        }

        return suggestions.map {
            .init(text: $0.term, type: .regular)
        }
    }

    func nextCharacterPredictions(
        forText _: String,
        suggestions _: [Autocomplete.Suggestion]
    ) async throws -> [Character: Double] {
        [:]
    }
}
