//
//  CalculateBraycurtisDistance.swift
//  functional-programming
//
//  Created by Oktavia Citra on 29/08/22.
//

import Foundation

// MARK: - Before
func braycurtis(between x: [Double], and y: [Double]) -> Double  {
    zip(x, y).map { fabs($0.0 - $0.1) / ($0.0 + $0.1) }.reduce(0, +)
}

// MARK: - After
func braycurtis(between x: [Double], and y: [Double]) -> Double  {
    var result: Double = 0.0
    for i in 0..<x.count {
        result += fabs(x[i] - y[i]) / (x[i] + y[i])
    }
    return result
}
