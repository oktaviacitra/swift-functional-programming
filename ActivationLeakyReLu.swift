//
//  ActivationLeakyReLu.swift
//  functional-programming
//
//  Created by Oktavia Citra on 06/09/22.
//

import Foundation

// MARK: - Before
func activationLeakyReLu( _ decimals: [Double], alpha: Double = 0.3) -> [Double] {
    var result = [Double]()
    for decimal in decimals {
        let temp = alpha * decimal
        if temp > decimal {
            result.append(temp)
        } else {
            result.append(decimal)
        }
    }
    return result
}

// MARK: - After
func activationLeakyReLu( _ decimals: [Double], alpha: Double = 0.3) -> [Double] {
    decimals.map { max($0 * alpha, $0) }
}
