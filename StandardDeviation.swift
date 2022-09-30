//
//  StandardDeviation.swift
//  functional-programming
//
//  Created by Oktavia Citra on 30/09/22.
//

import Foundation

// MARK: - Before
func standarDeviation(of decimals: [Double]) -> Double {
    let length: Double = Double(decimals.count)
    var sum: Double = 0.0
    for decimal in decimals {
        sum += decimal
    }
    let average: Double = sum / length

    var total: Double = 0.0
    for decimal in decimals {
        let temp: Double = pow(decimal - average, 2.0)
        total += temp
    }
    return sqrt(total / length)
}

// MARK: - After
func standarDeviation(of decimals: [Double]) -> Double {
    let length: Double = Double(decimals.count)
    let average: Double = decimals.reduce(0, +) / length
    return sqrt(decimals.map { pow($0 - average, 2.0)}.reduce(0, +) / length)
}
