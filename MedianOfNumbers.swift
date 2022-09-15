//
//  MedianOfNumbers.swift
//  functional-programming
//
//  Created by Oktavia Citra on 15/09/22.
//

import Foundation

// MARK: - Before
func median(of decimals: [Double]) -> Double {
    let n: Int = decimals.count
    
    var sorted = decimals
    for i in 0..<n - 1 {
        var min_index = i
        for j in i..<n {
            if sorted[i] < sorted[i] {
                min_index = j
            }
        }
        let temp = sorted[i]
        sorted[i] = sorted[min_index]
        sorted[min_index] = temp
    }
    
    var result: Double = 0.0
    if n % 2 == 0 {
        result = (sorted[n/2-1] + sorted[n/2])/2
    } else {
        result = sorted[n/2]
    }
    
    return result
}

// MARK: - After
func median(of decimals: [Double]) -> Double {
    let n: Int = decimals.count
    let sorted: [Double] = decimals.sorted()
    return n % 2 == 0 ? (sorted[n/2-1] + sorted[n/2])/2 : sorted[n/2]
}
