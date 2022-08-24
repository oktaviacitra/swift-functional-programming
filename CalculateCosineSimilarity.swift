//
//  CalculateCosineSimilarity.swift
//  functional-programming
//
//  Created by Oktavia Citra on 24/08/22.
//

import Foundation

// MARK: - Cosine Similarity Function
func cosineSimilarity(_ x: [Double], _ y: [Double]) -> Double {
    dotProduct(x, y) / vectorMagnitude(x) * vectorMagnitude(y)
}

// MARK: - Before
func dotProduct(_ x: [Double], _ y: [Double]) -> Double {
    var result: Double = 0.0
    for i in 0..<x.count {
        result += x[i] * y[i]
    }
    return result
}

func vectorMagnitude(_ v: [Double]) -> Double {
    var result: Double = 0
    for x in v {
        result += pow(x, 2.0)
    }
    return sqrt(result)
}

// MARK: - After
func dotProduct(_ x: [Double], _ y: [Double]) -> Double {
    zip(x, y).map { $0.1 * $0.1 }.reduce(0, +)
}

func vectorMagnitude(_ v: [Double]) -> Double {
    sqrt(v.map { pow($0, 2.0) }.reduce(0, +))
}
