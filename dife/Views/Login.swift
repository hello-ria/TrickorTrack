//
//  Login.swift
//  dife
//
//  Created by Ria Baxi on 2022-10-08.
//

import SwiftUI

struct Login: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.orange
                    .ignoresSafeArea()
                Circle()
                    .scale (1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale (1.35)
                    .foregroundColor(.white)
                VStack {
                    Image("app icon")
                    Text("Howdy! 👋")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width:300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width:300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login") {
                        autheticateUser(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width:300, height: 50)
                    .background(Color.black)
                    .cornerRadius(10)
                    
                    
                }
            }
        }
        
        .navigationBarHidden(true)
    }
    func autheticateUser(username: String, password:String){
        if username.lowercased() == "Ria Baxi" {
            wrongUsername = 0
            if password.lowercased() == "SegoLilyHacks" {
                wrongPassword = 0
                showingLoginScreen = true
            }
            
            
            struct LoginView_Previews: PreviewProvider {
                static var previews: some View {
                    Login()
                }
            }
            
        }
    }
}

struct Previews_Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
        
    }
}
