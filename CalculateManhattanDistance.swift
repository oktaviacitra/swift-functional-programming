//
//  CalculateManhattanDistance.swift
//  functional-programming
//
//  Created by Oktavia Citra on 25/08/22.
//

import Foundation

// MARK: - Before
func manhattanDistance(between x: [Double], and y: [Double]) -> Double {
    var result: Double = 0.0
    for i in 0..<x.count {
        result += fabs(x[i] - y[i])
    }
    return result
}

// MARK: - After
func manhattanDistance(between x: [Double], and y: [Double]) -> Double {
    zip(x, y).map { fabs($0.0 - $0.1) }.reduce(0, +)
}
