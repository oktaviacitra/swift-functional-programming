//
//  ExtractAttributes.swift
//  functional-programming
//
//  Created by Oktavia Citra on 18/08/22.
//

import Foundation

// MARK: - Model
struct Name {
    let first: String
    let middle: String
    let last: String
}

// MARK: - Before
func extract(_ names: [Name]) -> [String] {
    var result = [String]()
    for name in names {
        result.append("\(name.first) \(name.middle) \(name.last)")
    }
    return result
}

// MARK: - After
func extract(_ names: [Name]) -> [String] {
    names.map({ "\($0.first) \($0.middle) \($0.last)" })
}
