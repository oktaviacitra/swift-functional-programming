//
//  StandardScaler.swift
//  functional-programming
//
//  Created by Oktavia Citra on 12/09/22.
//

import Foundation

// MARK: - Before
func StandardScaler(_ decimals: [Double]) -> [Double] {
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
    let standardDeviation: Double = sqrt(total / length)
    
    var result = [Double]()
    for decimal in decimals {
        let temp = (decimal - average) / standardDeviation
        result.append(temp)
    }
    return result
}

// MARK: - After
func StandardScaler(_ decimals: [Double]) -> [Double] {
    let length: Double = Double(decimals.count)
    let average: Double = decimals.reduce(0, +) / length
    let standardDeviation: Double = sqrt(decimals.map { pow($0 - average, 2.0)}.reduce(0, +) / length)
    return decimals.map { ($0 - average) / standardDeviation }
}
