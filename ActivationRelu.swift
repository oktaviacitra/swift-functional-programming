//
//  ActivationRelu.swift
//  functional-programming
//
//  Created by Oktavia Citra on 05/09/22.
//

import Foundation

// MARK: - Before
func activationRelu(_ decimals: [Double],
                    alpha: Double = 0.0,
                    threshold: Double = 0.0) -> [Double] {
    var result = [Double]()
    for decimal in decimals {
        if decimal <= threshold {
            result.append(alpha)
        } else {
            result.append(decimal)
        }
    }
    return result
}

// MARK: - After
func activationRelu(_ decimals: [Double],
                    alpha: Double = 0.0,
                    threshold: Double = 0.0) -> [Double] {
    decimals.map { $0 <= threshold ? alpha : $0 }
}
