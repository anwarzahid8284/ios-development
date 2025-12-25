//
//  AppetizerItemView.swift
//  TestIOS
//
//  Created by Affan Laptops on 11/12/2025.
//

import SwiftUI

struct AppetizerItemView: View {

    let appitizer: AppetizerModel

    var body: some View {
        HStack(spacing: 12) {

            AsyncImage(url: URL(string: appitizer.imageURL)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: 120, height: 90)

                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 90)
                        .cornerRadius(8)
                        .clipped()

                case .failure:
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.gray)
                        .frame(width: 120, height: 90)

                @unknown default:
                    EmptyView()
                }
            }

            VStack(alignment: .leading, spacing: 5) {

                Text(appitizer.name)
                    .font(.title2)
                    .fontWeight(.medium)

                Text("$\(appitizer.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.vertical, 8)
        }
    }
}

