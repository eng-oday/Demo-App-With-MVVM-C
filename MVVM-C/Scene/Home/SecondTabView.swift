//
//  SecondTabView.swift
//  MVVM-C
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import SwiftUI

struct SecondTabView: View {
    @ObservedObject var viewModel: SecondTabViewModel
    var body: some View {
        Text("am second")
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView(viewModel: SecondTabViewModel())
    }
}
