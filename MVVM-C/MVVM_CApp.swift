//
//  MVVM_CApp.swift
//  MVVM-C
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import SwiftUI

@main
struct MVVM_CApp: App {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    @StateObject var appCoordinator = AppCoordinator()
    
    var body: some Scene {
        WindowGroup {
            appCoordinator.start()
        }
    }
}
