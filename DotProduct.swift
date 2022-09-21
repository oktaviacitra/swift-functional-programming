//
//  DotProduct.swift
//  functional-programming
//
//  Created by Oktavia Citra on 21/09/22.
//

import Foundation

 MARK: - Before
func dotProduct(x: [Double], y: [Double]) -> Double {
    var result: Double = 0.0
    for i in 0 ..< x.count {
        result += (x[i] * y[i])
    }
    return result
}

// MARK: - After
func dotProduct(x: [Double], y: [Double]) -> Double {
    zip(x, y).map(*).reduce(0.0, +)
}
