//
//  WelcomeView.swift
//  Fashion
//
//  Created by André Filipe Fonsêca Borba on 11/11/23.
//

import SwiftUI

struct WelcomeView: View {
    @State private var buttonText: String = "Let's Get Started"
    @State private var imagesData: String = ""
    @State private var isPressed: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 4) {
                HStack {
                    Image("moda1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 360)
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 42))
                    
                    VStack {
                        Image("moda2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 200)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 64))
                            .padding(.top, 52)
                            .padding(.bottom, -4)
                        
                        Image("moda3")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 200)
                            .clipped()
                            .clipShape(Circle())
                    }
                }
                .padding(.vertical, 12)
                
                HStack {
                    Text("The Fashion App")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.brown)
                    
                    Text("That")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                VStack {
                    Text("Makes You Look Your Best")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                        .frame(width: 300, height: 60)
                        .padding(.vertical, 2)
                    
//                    CustomLink(destinationView: SignUpView(), label: {
//                        MainButton(text: $buttonText, handleButton: nil, label: {
//                            Text(buttonText)
//                        })
//                    })
                    
                    MainButton(text: "Let's Get Started", handleButton: nil, label: {
                        CustomLink(destinationView: SignUpView(), label: {
                            Text(buttonText)
                                .background(isPressed ? Color.gray.opacity(0.1) : Color.brown)
                                .foregroundStyle(isPressed ? .gray : .white)
                                .font(.title2)
                                .fontWeight(.semibold)
                                .clipShape(RoundedRectangle(cornerRadius: 24))
                                .underline(false)
                                .padding()
                        })
                    })
                    
                    HStack {
                        Text("Already have an account?")
                            .font(.title3)
                            .fontWeight(.light)
                        
                        CustomLink(destinationView: SignInView(), label: {
                            Text("Sign In")
                        })
                    }
                }
                .padding(.bottom,72)
            }
            .padding()
        }
    }
}


#Preview {
    WelcomeView()
}
