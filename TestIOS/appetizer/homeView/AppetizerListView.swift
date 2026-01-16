//
//  AppetizerListView.swift
//  TestIOS
//
//  Created by Affan Laptops on 08/12/2025.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var appetizerViewModel = AppetizerViewModel()
    @State var isShowingDetails: Bool = false
    @State var selectedAppetizer: AppetizerModel?
    var body: some View {
        ZStack {
            NavigationView{
                List(appetizerViewModel.appitizer){ appitizer in
                    AppetizerItemView(appitizer: appitizer)
                        .onTapGesture {
                            selectedAppetizer = appitizer
                            isShowingDetails = true
                        }
                }
                .navigationTitle("Appetizers")
                .disabled(isShowingDetails)
            }
            .onAppear{
                appetizerViewModel.getAppetizers()
            }
            .blur(radius: isShowingDetails ? 20 : 0)
            if isShowingDetails{
                AppetizerDetailView(appetizer: selectedAppetizer!, isShowingDetails: $isShowingDetails)
            }
            if appetizerViewModel.isLoading{
                LoadingView()
            }
        }
        .alert(item: $appetizerViewModel.alertItem){ alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
