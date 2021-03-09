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
}
