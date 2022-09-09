//
//  ActivationSigmoid.swift
//  functional-programming
//
//  Created by Oktavia Citra on 09/09/22.
//

import Foundation

// MARK: - Before
func activationSigmoid(_ decimals: [Double]) -> [Double] {
    var result = [Double]()
    for decimal in decimals {
        let temp: Double = 1 / (1 + exp(decimal) )
        result.append(temp)
    }
    return result
}

// MARK: - After
func activationSigmoid(_ decimals: [Double]) -> [Double] {
    decimals.map { 1 / (1 + exp($0) ) }
}
