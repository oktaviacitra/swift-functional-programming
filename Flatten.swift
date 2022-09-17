//
//  Flatten.swift
//  functional-programming
//
//  Created by Oktavia Citra on 17/09/22.
//

import Foundation

// MARK: - Before
func Flatten(_ array: [[[Double]]]) -> [Double] {
    var result = [Double]()
    for a in array {
        for b in a {
            for c in b {
                result.append(c)
            }
        }
    }
    return result
}

// MARK: - After
func Flatten(_ array: [[[Double]]]) -> [Double] {
    array.flatMap{ $0 }.flatMap{ $0 }
}
