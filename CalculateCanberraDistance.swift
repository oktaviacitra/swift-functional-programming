//
//  CalculateCanberraDistance.swift
//  functional-programming
//
//  Created by Oktavia Citra on 28/08/22.
//

import Foundation

// MARK: - Before
func canberraDistance(between x: [Double], and y: [Double]) -> Double {
    var result: Double = 0.0
    for i in 0..<x.count {
        result += fabs(x[i] - y[i]) / ( fabs(x[i]) + fabs(y[i]) )
    }
    return result
}

// MARK: - After
func canberraDistance(between x: [Double], and y: [Double]) -> Double {
    zip(x, y).map { fabs($0.0 - $0.1) / ( fabs($0.0) + fabs($0.1) ) }.reduce(0, +)
}
