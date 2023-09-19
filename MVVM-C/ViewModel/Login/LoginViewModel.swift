//
//  LoginViewModel.swift
//  MVVM-C
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import Foundation
import SwiftUI
import Combine


class LoginViewModel:ObservableObject {
    @Published var userName:String                  = ""
    @Published var password:String                  = ""
    @Published var loginButtonEnabled:Bool          = false
    @AppStorage("isLoggedIn") var isLoggedIn: Bool  = false
    
    init() {
        Publishers.CombineLatest($userName, $password)
            .map{userName , password in
                return !userName.isEmpty && !password.isEmpty
            }
            .assign(to: &$loginButtonEnabled)
    }
    
    func login () {
        isLoggedIn = true
        print("am login Now ")
    }
}
