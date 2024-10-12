//
// Created by Gabor Detari gabor@detari.dev
// Copyright (c) 2024 Gabor Detari. All rights reserved.
//

import Foundation
import KeyboardKit

class TibetanKeyboardLayoutService: KeyboardLayout.StandardService {
    override func keyboardLayout(for context: KeyboardContext) -> KeyboardLayout {
        let layout = super.keyboardLayout(for: context)
        switch context.keyboardType {
        case let .alphabetic(keyboardCase):
            switch keyboardCase {
            case .lowercased, .auto:
                layout.itemRows[0][0].action = .character("྄")
                layout.itemRows[0][1].action = .character("ཉ")
                layout.itemRows[0][2].action = .character("ེ")
                layout.itemRows[0][3].action = .character("ར")
                layout.itemRows[0][4].action = .character("ཏ")
                layout.itemRows[0][5].action = .character("ཡ")
                layout.itemRows[0][6].action = .character("ུ")
                layout.itemRows[0][7].action = .character("ི")
                layout.itemRows[0][8].action = .character("ོ")
                layout.itemRows[0][9].action = .character("པ")

                layout.itemRows[1][1].action = .character("འ")
                layout.itemRows[1][2].action = .character("ས")
                layout.itemRows[1][3].action = .character("ད")
                layout.itemRows[1][4].action = .character("ང")
                layout.itemRows[1][5].action = .character("ག")
                layout.itemRows[1][6].action = .character("ཧ")
                layout.itemRows[1][7].action = .character("ཇ")
                layout.itemRows[1][8].action = .character("ཀ")
                layout.itemRows[1][9].action = .character("ལ")

                layout.itemRows[2][2].action = .character("ཟ")
                layout.itemRows[2][3].action = .character("ཛ")
                layout.itemRows[2][4].action = .character("ཅ")
                layout.itemRows[2][5].action = .character("ཙ")
                layout.itemRows[2][6].action = .character("བ")
                layout.itemRows[2][7].action = .character("ན")
                layout.itemRows[2][8].action = .character("མ")
            case .uppercased:
                layout.itemRows[0][0].action = .character("྄")
                layout.itemRows[0][1].action = .character("ཝ")
                layout.itemRows[0][2].action = .character("ཻ")
                layout.itemRows[0][3].action = .character("ྲ")
                layout.itemRows[0][4].action = .character("ཐ")
                layout.itemRows[0][5].action = .character("ྱ")
                layout.itemRows[0][6].action = .character("ྭ")
                layout.itemRows[0][7].action = .character("ྀ")
                layout.itemRows[0][8].action = .character("ཽ")
                layout.itemRows[0][9].action = .character("ཕ")

                layout.itemRows[1][1].action = .character("ཨ")
                layout.itemRows[1][2].action = .character("ཤ")
                layout.itemRows[1][3].action = .character("ཌ")
                layout.itemRows[1][4].action = .character("ཋ")
                layout.itemRows[1][5].action = .character("ཊ")
                layout.itemRows[1][6].action = .character(" ཿ")
                layout.itemRows[1][7].action = .character("ཇ")
                layout.itemRows[1][8].action = .character("ཁ")
                layout.itemRows[1][9].action = .character("ླ")

                layout.itemRows[2][2].action = .character("ཞ")
                layout.itemRows[2][3].action = .character("ཥ")
                layout.itemRows[2][4].action = .character("ཆ")
                layout.itemRows[2][5].action = .character("ཚ")
                layout.itemRows[2][6].action = .character("བ")
                layout.itemRows[2][7].action = .character("ཎ")
                layout.itemRows[2][8].action = .character("ཾ")
            default: break
            }
            if var delimiter = layout.tryCreateBottomRowItem(for: .character("་")) {
                delimiter.size.width = .available
                layout.itemRows.insert(delimiter, after: .space, atRow: 3)
            }
        case .numeric:
            layout.itemRows[0][0].action = .character("༡")
            layout.itemRows[0][1].action = .character("༢")
            layout.itemRows[0][2].action = .character("༣")
            layout.itemRows[0][3].action = .character("༤")
            layout.itemRows[0][4].action = .character("༥")
            layout.itemRows[0][5].action = .character("༦")
            layout.itemRows[0][6].action = .character("༧")
            layout.itemRows[0][7].action = .character("༨")
            layout.itemRows[0][8].action = .character("༩")
            layout.itemRows[0][9].action = .character("༠")

            layout.itemRows[1][0].action = .character("-")
            layout.itemRows[1][1].action = .character("/")
            layout.itemRows[1][2].action = .character(":")
            layout.itemRows[1][3].action = .character(";")
            layout.itemRows[1][4].action = .character("༼")
            layout.itemRows[1][5].action = .character("༽")
            layout.itemRows[1][6].action = .character("$")
            layout.itemRows[1][7].action = .character("༕")
            layout.itemRows[1][8].action = .character("@")
            layout.itemRows[1][9].action = .character("”")

            layout.itemRows[2][2].action = .character("࿂")
            layout.itemRows[2][3].action = .character("༜")
            layout.itemRows[2][4].action = .character("༴")
            layout.itemRows[2][5].action = .character("།")
            layout.itemRows[2][6].action = .character("༄")
        case .symbolic:
            layout.itemRows[0][0].action = .character("[")
            layout.itemRows[0][1].action = .character("]")
            layout.itemRows[0][2].action = .character("{")
            layout.itemRows[0][3].action = .character("}")
            layout.itemRows[0][4].action = .character("#")
            layout.itemRows[0][5].action = .character("%")
            layout.itemRows[0][6].action = .character("^")
            layout.itemRows[0][7].action = .character("*")
            layout.itemRows[0][8].action = .character("+")
            layout.itemRows[0][9].action = .character("=")

            layout.itemRows[1][0].action = .character("_")
            layout.itemRows[1][1].action = .character("\\")
            layout.itemRows[1][2].action = .character("|")
            layout.itemRows[1][3].action = .character("~")
            layout.itemRows[1][4].action = .character("<")
            layout.itemRows[1][5].action = .character(">")
            layout.itemRows[1][6].action = .character("(")
            layout.itemRows[1][7].action = .character(")")
            layout.itemRows[1][8].action = .character("&")
            layout.itemRows[1][9].action = .character("•")

            layout.itemRows[2][2].action = .character(".")
            layout.itemRows[2][3].action = .character(",")
            layout.itemRows[2][4].action = .character("?")
            layout.itemRows[2][5].action = .character("!")
            layout.itemRows[2][6].action = .character("'")
        default: break
        }

        return layout
    }
}
