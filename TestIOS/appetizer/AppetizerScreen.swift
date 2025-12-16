//
//  AppetizerScreen.swift
//  TestIOS
//
//  Created by Affan Laptops on 08/12/2025.
//

import SwiftUI

struct AppetizerScreen: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                    
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Order")
                }
        }
        .accentColor(.accentColor)
    }
}

#Preview {
    AppetizerScreen()
}
