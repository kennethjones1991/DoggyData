//
//  Doggy.swift
//  DoggyData
//
//  Created by Kenneth Jones on 3/9/21.
//

import Foundation

struct Doggy: Codable {
    let id: Int
    let name: String
    let temperament: [String]
    let lifeExpectancy: String
    let description: String
    let image: String
    
//    enum DogKeys: String, CodingKey {
//        case id
//        case name
//        case temperament
//        case lifeExpectancy = "life-expectancy"
//        case description
//        case image
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: DogKeys.self)
//
//        id = try container.decode(Int.self, forKey: .id)
//
//        name = try container.decode(String.self, forKey: .name)
//
//        var decodedTemperaments: [String] = []
//        var temperamentContainer = try container.nestedUnkeyedContainer(forKey: .temperament)
//        while !temperamentContainer.isAtEnd {
//            let temperament = try temperamentContainer.decode(String.self)
//            decodedTemperaments.append(temperament)
//        }
//        temperament = decodedTemperaments
//
//        lifeExpectancy = try container.decode(String.self, forKey: .lifeExpectancy)
//
//        description = try container.decode(String.self, forKey: .description)
//
//        image = try container.decode(String.self, forKey: .image)
//    }
}
