//
//  PickerStyleModifier.swift
//  100DAYSSWIFTUIapp
//
//  Created by Emi Sanzmor on 21/06/25.
//

import Foundation
import SwiftUI

// MARK: - Custom View Modifiers

struct PickerStyleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(12)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .listRowBackground(Color.clear)

    }
}

// MARK: - Extension for easier modifier use

extension View {
    func customPickerStyle() -> some View {
        modifier(PickerStyleModifier())
    }
}

