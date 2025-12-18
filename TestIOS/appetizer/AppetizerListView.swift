//
//  AppetizerListView.swift
//  TestIOS
//
//  Created by Affan Laptops on 08/12/2025.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var appetizerViewModel = AppetizerViewModel()
    var body: some View {
        NavigationView{
            List(appetizerViewModel.appitizer){ appitizer in
                AppetizerItemView(appitizer: appitizer)
            }
            .navigationTitle("Appetizers")
        }
        .onAppear{
            appetizerViewModel.getAppetizers()
        }
        .alert(item: $appetizerViewModel.networkErrorMessage){ networkErrorMessage in
            Alert(title: networkErrorMessage.errorTitle, message: networkErrorMessage.errorMessage, dismissButton: networkErrorMessage.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
