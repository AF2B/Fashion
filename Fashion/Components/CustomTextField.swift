//
//  CustomTextField.swift
//  Fashion
//
//  Created by André Filipe Fonsêca Borba on 11/11/23.
//

import SwiftUI

struct CustomTextField: View {
    private var text: String
    @Binding private var input: String
    private var label: String
    
    init(text: String, input: Binding<String>, label: String) {
        self.text = text
        self._input = input
        self.label = label
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.gray)
            
            if label == "Password" {
                SecureField(text, text: $input)
                    .frame(width: 320, height: 50)
                    .padding(.horizontal, 20)
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            } else {
                TextField(text, text: $input)
                    .frame(width: 320, height: 50)
                    .padding(.horizontal, 20)
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            }
        }
    }
}

#Preview {
    CustomTextField(text: "example@gmail.com", input: .constant(""), label: "Email")
}
