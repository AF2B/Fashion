//
//  SocialLoginButton.swift
//  Fashion
//
//  Created by André Filipe Fonsêca Borba on 11/11/23.
//

import SwiftUI

struct SocialLoginButton: View {
    let imageName: String
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray, lineWidth: 2)
                .frame(width: 62, height: 62)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
        }
        .padding(.horizontal)
    }
}

#Preview {
    SocialLoginButton(imageName: "apple")
}
