//
//  HomeView.swift
//  MVVM-C
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import SwiftUI

struct HomeTabView: View {
    @ObservedObject var viewModel: HomeViewModel // HomeViewModel can manage tab-specific data
    
    var body: some View {
        TabView {
            // Add tab items here, each with its own SwiftUI view
            NavigationView {
                FirstTabView(viewModel: viewModel.firstTabViewModel)
            }
            .tabItem {
                Text("First Tab")
                Image(systemName: "1.circle")
            }
            
            NavigationView {
                SecondTabView(viewModel: viewModel.secondTabViewModel)
            }
            .tabItem {
                Text("Second Tab")
                Image(systemName: "2.circle")
            }
            
            // Add more tabs as needed
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView(viewModel: HomeViewModel())
    }
}
