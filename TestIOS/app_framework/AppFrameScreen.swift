//
//  AppFrameScreen.swift
//  TestIOS
//
//  Created by Affan Laptops on 17/10/2025.
//

import SwiftUI

struct AppFrameScreen: View {
    let column: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns:column){
                    ForEach(MockData.frameworks) { framework in
                        AppFrameItem(frameworks: framework)
                        
                    }
                }
            }
            .navigationTitle("Framework")
        }
        
        
    }
}

struct AppFrameItem:View {
    let frameworks:AppFrameModel
    var body: some View {
        VStack{
            Image(frameworks.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(frameworks.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}

#Preview {
    AppFrameScreen()
        .preferredColorScheme(.dark)
}
