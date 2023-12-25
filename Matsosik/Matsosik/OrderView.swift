//
//  OrderView.swift
//  Matsosik
//
//  Created by Kdaramz on 12/16/23.
//

import SwiftUI

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
}

struct RestaurantRow: View {
    var restaurant: Restaurant

    var body: some View {
        Text("Restaurant: \(restaurant.name)")
    }
}

struct OrderView: View {
    var body: some View {
        var restaurants = [Restaurant(name: "원할머니보쌈"), Restaurant(name: "장충동왕족발보쌈")]

        return List(restaurants) { RestaurantRow(restaurant: $0) }
    }
}
