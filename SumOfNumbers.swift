//
//  SumOfNumbers.swift
//  functional-programming
//
//  Created by Oktavia Citra on 16/08/22.
//

import Foundation

// MARK: - Before
func sum(of numbers: [Int]) -> Int {
    var result: Int = 0
    for number in numbers {
        result += number
    }
    return result
}
/*
 I often created a function to sum all values from an array like that.
 I think that is the best way.
 */

// MARK: - After
func sum(of numbers: [Int]) -> Int {
    numbers.reduce(0, +)
}
/*
 But, after I read a book entitled “objc Functional Swift”,
 I know what things can be improved from that function.
 */
