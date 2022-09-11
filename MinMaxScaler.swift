//
//  MinMaxScaler.swift
//  functional-programming
//
//  Created by Oktavia Citra on 11/09/22.
//

import Foundation

// MARK: - Before
func minMaxScaler(_ decimals: [Double]) -> [Double]? {
    guard let min: Double = decimals.min(),
          let max: Double = decimals.max() else { return nil }
    var result = [Double]()
    for decimal in decimals {
        let temp: Double = (decimal - min) / (max - min)
        result.append(temp)
    }
    return result
}

// MARK: - After
func minMaxScaler(_ decimals: [Double]) -> [Double]? {
    guard let min: Double = decimals.min(),
          let max: Double = decimals.max() else { return nil }
    return decimals.map { ($0 - min) / (max - min) }
}
