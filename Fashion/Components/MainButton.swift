//
//  MainButton.swift
//  Fashion
//
//  Created by André Filipe Fonsêca Borba on 11/11/23.
//

import SwiftUI

struct MainButton<Label>: View where Label: View {
    private var text: String
    private var handleButton: (() -> Void)?
    private var label: () -> Label
    @State private var isPressed = false
    
    init(text: String, handleButton: (() -> Void)? = nil, @ViewBuilder label: @escaping () -> Label) {
        self.text = text
        self.handleButton = handleButton
        self.label = label
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            Button(action: {
                handleButton?()
                withAnimation(.easeInOut(duration: 0.2)) {
                    isPressed = true
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        isPressed = false
                    }
                }
            }) {
                label()
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
    MainButton(text: "Let's Get Started", handleButton: {
        print("...")
    }) {
        Text("Test")
    }
}
