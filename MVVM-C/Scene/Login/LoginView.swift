//
//  LoginView.swift
//  MVVM-C
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel: LoginViewModel
    var body: some View {
        VStack {
            TextField("Username", text: $viewModel.userName)
                .padding()
            
            SecureField("Password", text: $viewModel.password)
                .padding()
            
            Button(action: {
                viewModel.login()
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(5)
            }
            .disabled(!viewModel.loginButtonEnabled)
        }
        .padding()
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView(viewModel: LoginViewModel())
        }
    }
    
}
