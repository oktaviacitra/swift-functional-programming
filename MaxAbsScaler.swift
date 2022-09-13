//
//  MaxAbsScaler.swift
//  functional-programming
//
//  Created by Oktavia Citra on 13/09/22.
//

import Foundation

// MARK: - Before
func maxAbsScaler(_ decimals: [Double]) -> [Double]? {
    var temps = [Double]()
    for decimal in decimals {
        if decimal < 0 {
            temps.append(decimal * (-1.0))
        } else {
            temps.append(decimal)
        }
    }
    
    var maxAbs: Double = temps[0]
    for temp in temps {
        if temp > maxAbs {
            maxAbs = temp
        }
    }
    
    var result = [Double]()
    for decimal in decimals {
        let calculated: Double = decimal / maxAbs
        result.append(calculated)
    }
    return result
}

// MARK: - After
func maxAbsScaler(_ decimals: [Double]) -> [Double]? {
    guard let maxAbs = decimals.map({ $0 < 0 ? $0 * (-1.0) : $0}).max() else { return nil }
    return decimals.map { $0 / maxAbs }
}
