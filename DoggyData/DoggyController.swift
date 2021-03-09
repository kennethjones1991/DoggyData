//
//  DoggyController.swift
//  DoggyData
//
//  Created by Kenneth Jones on 3/9/21.
//

import Foundation

class DoggyController {
    var doggies: [Doggy] = []
    
    func decodeDoggyData() {
        if let url = Bundle.main.url(forResource: "doggies", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = JSONDecoder.KeyDecodingStrategy.convertFromSnakeCase
                doggies = try decoder.decode([Doggy].self, from: data)
            } catch {
                print("Error decoding JSON data: \(error)")
            }
        }
    }
}
