//
//  App.swift
//  prueba
//
//  Created by Wiliam Ochoa on 06/07/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Application: Decodable, Identifiable {
    var id: Int
    var name: String
    var description: String
    var developer: String
    var stars: Int
    var price: Float
    var comments: [Comment]
    var category: Category
    var installed: Bool
    enum Category: String, CaseIterable, Codable {
        case lakes = "Juegos"
        case rivers = "Redes Sociales"
        case mountains = "Productividad"
    }

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

}

struct Comment: Decodable, Hashable {
    var user: String
    var comment: String
}
