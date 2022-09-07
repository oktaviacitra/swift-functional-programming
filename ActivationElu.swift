//
//  ActivationElu.swift
//  functional-programming
//
//  Created by Oktavia Citra on 07/09/22.
//

import Foundation

// MARK: - Before
func activationELU(_ decimals: [Double], alpha: Double) -> [Double] {
    var result = [Double]()
    for decimal in decimals {
        if decimal >= 0 {
            result.append(decimal)
        } else {
            let temp: Double = alpha * (exp(decimal) - 1)
            result.append(temp)
        }
    }
    return result
}

// MARK: - After
func activationELU(_ decimals: [Double], alpha: Double) -> [Double] {
    decimals.map { $0 >= 0 ? $0 : alpha * (exp($0) - 1) }
}
