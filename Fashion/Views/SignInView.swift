//
//  SignInView.swift
//  Fashion
//
//  Created by André Filipe Fonsêca Borba on 11/11/23.
//

import SwiftUI

struct SignInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 18) {
                VStack {
                    Text("Sign In")
                        .font(.title)
                        .fontWeight(.medium)
                        .padding(.vertical)
                    
                    Text("Hi! Welcome back, you've been missed")
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 32)
                
                VStack(alignment: .leading, spacing: 22) {
                    CustomTextField(text: "example@gmail.com", input: $email, label: "Email")
                    CustomTextField(text: "password", input: $password, label: "Password")
                    
                    HStack {
                        Spacer()
                        CustomLink(destinationView: Text("Forgot Password"), label: {
                            Text("Forgot Password?")
                        })
                    }
                }
                
                MainButton(text: "Sign In", handleButton: {
                    print("Login In")
                }, label: {
                    CustomLink(destinationView: EmptyView(), label: {
                        Text("Sign In")
                            .foregroundColor(.white)
                            .underline(false)
                    })
                })
                
                HStack {
                    Divider()
                        .frame(width: 100, height: 2)
                        .background(Color.gray)
                    
                    Text("Or sign in with")
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                        .padding(.vertical)
                    
                    Divider()
                        .frame(width: 100, height: 1)
                        .background(Color.gray)
                }
                
                HStack(alignment: .center, spacing: 6) {
                    SocialLoginButton(imageName: "apple")
                    SocialLoginButton(imageName: "google")
                    SocialLoginButton(imageName: "facebook")
                }
                .padding(.vertical)
                
                HStack {
                    Text("Don't have an account?")
                    CustomLink(destinationView: SignUpView(), label: {
                        Text("Sign Up")
                    })
                }
            }
            .padding()
        }
    }
}

#Preview {
    SignInView()
}
