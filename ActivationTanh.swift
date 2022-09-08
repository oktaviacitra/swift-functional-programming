//
//  ActivationTanh.swift
//  functional-programming
//
//  Created by Oktavia Citra on 08/09/22.
//

import Foundation

// MARK: - Before
func activationTanh(_ decimals: [Double]) -> [Double] {
    var result = [Double]()
    for decimal in decimals {
        result.append(tanh(decimal))
    }
    return result
}

// MARK: - After
func activationTanh(_ decimals: [Double]) -> [Double] {
    decimals.map { tanh($0) }
}
