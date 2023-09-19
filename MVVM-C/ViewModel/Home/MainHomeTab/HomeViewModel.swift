//
//  HomeViewModel.swift
//  MVVM-C
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import Foundation


class HomeViewModel:ObservableObject {
    @Published var firstTabViewModel = FirstTabViewModel()
    @Published var secondTabViewModel = SecondTabViewModel()
}
