//
//  ToNumerical.swift
//  functional-programming
//
//  Created by Oktavia Citra on 20/09/22.
//

import Foundation

// MARK: - Before
func toNumerical(_ labels: [String]) -> [Int] {
    let uniques: [String] = Array(Set(labels))
    var numerics: [String] = labels
    for (i, unique) in uniques.enumerated() {
        for (j, numeric) in numerics.enumerated() {
            if numeric == unique {
                numerics[j] = String(i)
            }
        }
    }
    var result = [Int]()
    for numeric in numerics {
        result.append(Int(numeric)!)
    }
    return numerics.compactMap { Int($0) }
}

// MARK: - After
func toNumerical(_ labels: [String]) -> [Int] {
    let uniques: [String] = Array(Set(labels))
    var numerics: [String] = labels
    uniques.enumerated().forEach { (i, unique) in
        numerics = numerics.map { $0 == unique ? String(i) : $0 }
    }
    return numerics.compactMap { Int($0) }
}
