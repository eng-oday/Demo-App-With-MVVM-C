//
//  FirstTabView.swift
//  MVVM-C
//
//  Created by 3rabApp-oday on 19/09/2023.
//

import SwiftUI

struct FirstTabView: View {
    @ObservedObject var viewModel: FirstTabViewModel
    var body: some View {
        Text("am first")
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView(viewModel: FirstTabViewModel())
    }
}
