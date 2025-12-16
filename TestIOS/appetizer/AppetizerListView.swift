//
//  AppetizerListView.swift
//  TestIOS
//
//  Created by Affan Laptops on 08/12/2025.
//

import SwiftUI

struct AppetizerListView: View {
    @State var appitizer: [AppetizerModel]=[]
    var body: some View {
        NavigationView{
            List(appitizer){ appitizer in
                AppetizerItemView(appitizer: appitizer)
            }
            .navigationTitle("Appetizers")
        }
        .onAppear{
            getAppetizers()
        }
    }
    func getAppetizers(){
        NetworkManager.shared.getAppetizers { (result) in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizer):
                    self.appitizer=appetizer
                case .failure(let error):
                    print("error \(error)")
                }
            }
            
        }
    }
}

#Preview {
    AppetizerListView()
}
