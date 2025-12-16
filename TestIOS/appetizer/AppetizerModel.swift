//
//  AppetizerModel.swift
//  TestIOS
//
//  Created by Affan Laptops on 11/12/2025.
//

import Foundation
struct AppetizerModel: Decodable, Identifiable {

    let id: String
    let name: String
    let description: String
    let price: Double
    let imageURL: String

    let calories: Int?
    let protein: Int?
    let carbs: Int?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description = "dsc"
        case price
        case imageURL = "img"
        case calories
        case protein
        case carbs
    }
}


struct AppetizerResponse:Decodable {
    let data: [AppetizerModel]
}

struct MockDataAppetizer {

    static let sampleAppetizer = AppetizerModel(
        id: "shake-shack-shackburger-8-pack",
        name: "Shake Shack",
        description: "Shake Shack ShackBurger® – 8 Pack",
        price: 49.0,
        imageURL: "https://goldbelly.imgix.net/uploads/showcase_media_asset/image/134862/shake-shack-shackburger-8-pack.973a5e26836ea86d7e86a327becea2b0.png",
        calories: 540,
        protein: 25,
        carbs: 33
    )

    static let appetizerList: [AppetizerModel] = [
        sampleAppetizer,
        sampleAppetizer,
        sampleAppetizer,
        sampleAppetizer
    ]
}

