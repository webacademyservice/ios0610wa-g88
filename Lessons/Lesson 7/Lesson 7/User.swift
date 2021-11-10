//
//  User.swift
//  Lesson 7
//
//  Created by Alexander Slobodjanjuk on 27.10.2021.
//

import Foundation

// Codable гарантирует что объект User можно превратить
// в примитивный тип Data

struct User: Codable {
    var firstName: String
    var lastName: String
    var isMarried: Bool
}

