//
//  Restaurants.swift
//  Matsosik
//
//  Created by Kdaramz on 1/6/24.
//

import Foundation

struct Restaurants: Decodable {
    let restaurants: [Restaurant]
}

struct Restaurant: Decodable, Identifiable {
    let id: Int
    let displayName: String
    let address: String
    let thumbnail: String
    let latitude: Double
    let longitude: Double
}
