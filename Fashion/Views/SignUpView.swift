//
//  SignUpView.swift
//  Fashion
//
//  Created by André Filipe Fonsêca Borba on 11/11/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var agreeToTerms: Bool = false
    
    var body: some View {
            NavigationStack {
                VStack(alignment: .center, spacing: 2) {
                    VStack {
                        Text("Create Account")
                            .font(.title)
                            .fontWeight(.medium)
                            .padding(.vertical)
                        
                        Text("Fill your information below or register")
                            .foregroundColor(.gray)
                        
                        Text("with your social account.")
                            .foregroundColor(.gray)
                    }
                    .padding(.vertical, 12)
                    
                    VStack(alignment: .leading, spacing: 22) {
                        CustomTextField(text: "Your Name", input: $name, label: "Name")
                        CustomTextField(text: "", input: $email, label: "Email")
                        CustomTextField(text: "", input: $password, label: "Password")
                        
                        HStack {
                            CheckBox(isChecked: $agreeToTerms)
                            Text("Agree with Terms & Conditions")
                        }
                    }
                    
                    MainButton(text: "Sign Up", handleButton: {
                        print("Sign Up")
                    }, label: {
                        CustomLink(destinationView: EmptyView(), label: {
                            Text("Sign Up")
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
                        Text("Already have an account?")
                        CustomLink(destinationView: SignInView(), label: {
                            Text("Sign In")
                        })
                    }
                }
                .padding()
            }
        }
}

#Preview {
    SignUpView()
}
