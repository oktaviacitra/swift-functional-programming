//
//  GaussianFilter.swift
//  functional-programming
//
//  Created by Oktavia Citra on 03/10/22.
//

import Foundation

public class GaussianFilter {
    private let x: [Double]
    private let y: [Double]
    
    init(between x: [Double], and y: [Double]) {
        self.x = x
        self.y = y
        
        guard x.count == y.count else {
            fatalError("The length of the vectors are not same")
        }
    }
    
    func calculate(with standardDeviation: Double) -> [Double] {
        zip(x, y).map {
            (1 / (2 *  Double.pi * pow(standardDeviation, 2)))
            * exp( -1 * ( (pow($0, 2) + pow($1, 2) ) / (2 * pow(standardDeviation, 2) ) ) )
        }
    }
    
}
