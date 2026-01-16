//
//  AppetizerDetailView.swift
//  TestIOS
//
//  Created by Affan Laptops on 25/12/2025.
//

import SwiftUI

struct AppetizerDetailView: View {
    let appetizer: AppetizerModel
    @Binding var isShowingDetails:Bool
    var body: some View {
        VStack{
            
            AsyncImage(url: URL(string: appetizer.imageURL)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                    
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity, maxHeight: 300)
                        .clipped()
                    
                case .failure(_):
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                        .foregroundColor(.gray)
                }
            }

            VStack{
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .padding()
                HStack(spacing: 50){
                    VStack(spacing: 6){
                        Text("Calories")
                            .bold()
                            .font(.caption)
                        Text("99")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                        
                    }
                    VStack(spacing: 6){
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        Text("69")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                        
                    }
                    VStack(spacing: 6){
                        Text("Proties")
                            .bold()
                            .font(.caption)
                        Text("98")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                        
                    }
                }
            }
            Spacer()
            Button{
                print("tapped")
            } label: {
                Text("$\(appetizer.price,specifier: "%.2f")- Add ")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
            }
            .padding(.bottom,30)
            
        }
        .frame(width: 320,height: 625)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{
            isShowingDetails=false
        }label: {
            ZStack{
                Circle()
                    .frame(width: 30,height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44,height: 44)
                    .foregroundColor(.black)
            }
        },alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockDataAppetizer.sampleAppetizer, isShowingDetails : .constant(true))
}
