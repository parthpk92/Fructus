//
//  FruitModel.swift
//  Fructus
//
//  Created by Parth Kapadia on 13/04/21.
//

import SwiftUI

// fruits data model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
