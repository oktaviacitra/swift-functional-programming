//
//  CalculateEuclideanDistance.swift
//  functional-programming
//
//  Created by Oktavia Citra on 23/08/22.
//

import Foundation

// MARK: - Before
func euclideanDistance(between x: [Double], and y: [Double]) -> Double {
    guard x.count == y.count else {
        fatalError("The length of the vectors are not same")
    }
    
    var result: Double = 0
    for i in 0..<x.count {
        result += pow(x[i] - y[i], 2.0)
    }
    
    return sqrt(result)
}

// MARK: - After
func euclideanDistance(between x: [Double], and y: [Double]) -> Double {
    guard x.count == y.count else {
        fatalError("The length of the vectors are not same")
    }
    
    return sqrt(zip(x, y).map { pow($0.0 - $0.1, 2.0) }.reduce(0, +))
}
