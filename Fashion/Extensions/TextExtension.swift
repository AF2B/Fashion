//
//  TextExtension.swift
//  Fashion
//
//  Created by André Filipe Fonsêca Borba on 11/11/23.
//

import Foundation
import SwiftUI

extension Text {
    func firstLetterCapitalized() -> Text {
        guard let firstCharacter = self.first() else {
            return self
        }
        let capitalizedString = String(firstCharacter).capitalized + self.dropFirst()
        return Text(capitalizedString)
    }
}
