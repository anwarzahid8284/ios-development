//
//  NetworkManager.swift
//  TestIOS
//
//  Created by Affan Laptops on 12/12/2025.
//

import Foundation

final class NetworkManager {

    static let shared = NetworkManager()
    private let appetizerURL = "https://free-food-menus-api-two.vercel.app/burgers"

    private init() {}

    func getAppetizers(
        completed: @escaping (Result<[AppetizerModel], NetworkError>) -> Void
    ) {

        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, response, error in

            if error != nil {
                completed(.failure(.unableToComplete))
                return
            }

            guard let response = response as? HTTPURLResponse,
                  response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }

            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }

            do {
                let decoder = JSONDecoder()
                let appetizers = try decoder.decode([AppetizerModel].self, from: data)

                DispatchQueue.main.async {
                    completed(.success(appetizers))
                }

            } catch {
                print("❌ Decoding error:", error)
                completed(.failure(.invalidData))
            }
        }

        task.resume()
    }
}
