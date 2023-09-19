//
//  AppCordinator.swift
//  MVVM-C
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import Foundation
import SwiftUI


class AppCoordinator:ObservableObject {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @Published var loginViewModel = LoginViewModel()
    @Published var homeViewModel = HomeViewModel()
    
    @ViewBuilder
    func start() -> some View {
        if userIsLoggedIn() {
            goToHomeScreen()
        }else{
            goToLoginScreen()
        }
    }
    
    private func userIsLoggedIn() -> Bool {
        return isLoggedIn
    }

    @ViewBuilder
    func goToLoginScreen() -> some View {
        LoginView(viewModel: loginViewModel)
    }
    
    @ViewBuilder
    func goToHomeScreen() -> some View {
        HomeTabView(viewModel: homeViewModel)
    }
    
}
