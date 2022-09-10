//
//  ActivationSoftmax.swift
//  functional-programming
//
//  Created by Oktavia Citra on 10/09/22.
//

import Foundation

// MARK: - Before
func activationSoftmax(_ decimals: [Double]) -> [Double] {
    var total: Double = 0.0
    for decimal in decimals {
        total += decimal
    }
    var result = [Double]()
    for decimal in decimals {
        let temp: Double = exp(decimal) / total
        result.append(temp)
    }
    return result
}

// MARK: - After
func activationSoftmax(_ decimals: [Double]) -> [Double] {
    let total = decimals.map { exp($0) }.reduce(0, +)
    return decimals.map { exp($0) / total }
}
