//
//  MainButton.swift
//  Fashion
//
//  Created by André Filipe Fonsêca Borba on 11/11/23.
//

import SwiftUI

struct MainButton: View {
    @Binding private var text: String
    private var handleButton: () -> Void
    @State private var isPressed = false
    
    init(text: Binding<String>, handleButton: @escaping () -> Void) {
        self._text = text
        self.handleButton = handleButton
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            Button(action: {
                handleButton()
                withAnimation(.easeInOut(duration: 0.2)) {
                    isPressed = true
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        isPressed = false
                    }
                }
            }) {
                Text(text)
            }
            .frame(width: 360, height: 64)
            .background(isPressed ? Color.gray.opacity(0.1) : Color.brown)
            .foregroundStyle(isPressed ? .gray : .white)
            .font(.title2)
            .fontWeight(.semibold)
            .clipShape(RoundedRectangle(cornerRadius: 24))
            .padding()
        }
    }
}

#Preview {
    MainButton(text: .constant("Let's Get Started"), handleButton: {
        print("...")
    })
}
