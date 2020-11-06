//
//  ContentView.swift
//  Devscorch Login SwiftUI
//
//  Created by Johan on 05/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        ZStack {
            Color(red: 22/255, green: 22/255, blue: 24/255)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack {
                Spacer()
                Image("DEVSCORCH")
                Text("DEVSCORCH 3.0 IS NOW AVAILABLE")
                    .foregroundColor(Color(red: 224/255, green: 99/255, blue: 212/255))
                    .font(.system(size: 16))
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                Text("Sign In")
                    .foregroundColor(.white)
                    .font(.system(size: 26))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .padding(.top, 15)
                TextField("Username", text: $username)
                    .frame(width: 300, height: 45)
                    .background(Color(.white))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(Font.system(size: 16))
                    .multilineTextAlignment(.center)
                    .cornerRadius(22)
                TextField("Password", text: $password)
                    .frame(width: 300, height: 45)
                    .background(Color(.white))
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(Font.system(size: 16))
                    .multilineTextAlignment(.center)
                    .cornerRadius(22)
                Button(action: {
                    print("User is logging in")
                }) {
                    Text("Sign In")
                        .padding(13)
                        .frame(width: 250, height: 45)
                        .foregroundColor(.white)
                        .background(Color(red: 102/255, green: 98/255, blue: 227/255))
                        .cornerRadius(22)
                        .font(.system(size: 15))
                }
                .padding(.top, 20)
                Button(action: {
                    print("Sign Up")
                }) {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .padding(.top, 15)
                }
                Spacer()
                Text("If you sign in you will agree with our User Agreement")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 13))
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
