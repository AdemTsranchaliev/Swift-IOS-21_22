//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Adem Tsranchaliev on 13.10.22.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var loginStatus: Bool = false;

    var body: some View {
        
        NavigationView {

        VStack {
            
            Image(systemName: "airplane")
                .font(.largeTitle)

            Text("Log in")
                .font(.title)
                .fontWeight(Font.Weight.bold)
            
            TextField("Username", text: $username)
                .padding()
                .frame(width: 300,height: 50)
                .cornerRadius(10)
                .background(Color.black.opacity(0.05))

            SecureField("Password", text: $password)
                .padding()
                .frame(width: 300,height: 50)
                .cornerRadius(10)
                .background(Color.black.opacity(0.05))
            
            Button("Log in"){
                authenticateUser(username:username,password:password)
                if loginStatus{
                    EmptyView()
                }
            }
            .foregroundColor(.white)
            .frame(width: 300,height: 50)
            .background(Color.blue)
            .cornerRadius(10)
                
                NavigationLink("",
                               destination: Text("Wellcome back!"),
                               isActive: $loginStatus)
            }

        }
    }
    
    func authenticateUser(username: String,password: String){
        print(password);
        if username=="admin"&&password=="Password" {
            loginStatus = true;
            
        }
        else{
            loginStatus = false;
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
