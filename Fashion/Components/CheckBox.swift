//
//  CheckBox.swift
//  Fashion
//
//  Created by André Filipe Fonsêca Borba on 11/11/23.
//

import SwiftUI

struct CheckBox: View {
    @Binding var isChecked: Bool
    
    var body: some View {
        Button(action: {
            isChecked.toggle()
        }) {
            Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(isChecked ? .brown : .gray)
        }
    }
}

#Preview {
    CheckBox(isChecked: .constant(false))
}
