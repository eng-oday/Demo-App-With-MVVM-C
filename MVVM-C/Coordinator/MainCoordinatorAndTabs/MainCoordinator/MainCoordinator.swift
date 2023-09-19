//
//  HomeCoordinator.swift
//  MVVM-C
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import Foundation

class MainCoordinator: ObservableObject {

    @Published var FirstTabCoordinator = FirstTabViewModel()
    @Published var SecondTabCoordinator = SecondTabViewModel()
    
    func navigateToFirstTab() {
        // Implement navigation logic to the first tab
    }
    
    func navigateToSecondTab() {
        // Implement navigation logic to the second tab
    }
    
}
