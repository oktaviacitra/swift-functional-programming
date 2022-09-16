//
//  RobustScaler.swift
//  functional-programming
//
//  Created by Oktavia Citra on 15/09/22.
//

import Foundation

// MARK: - Protocols
fileprivate protocol QuartileCalculation {
    func quartiles() -> (Double, Double, Double)
    func oddDivisible() -> (Double, Double, Double)
    func oddUndivisible() -> (Double, Double, Double)
    func evenDivisible() -> (Double, Double, Double)
    func evenUndivisible() -> (Double, Double, Double)
}

fileprivate protocol CalculationAttributes {
    func quartiles() -> (Double, Double, Double)
    func median(of decimals: [Double]) -> Double
}

// MARK: - Class
class RobustScaler {
    private let decimals: [Double]
    private let size: Int

    init(_ decimals: [Double]) {
        self.decimals = decimals
        self.size = decimals.count
        
        guard self.size > 4 else {
            fatalError("The length of array must be more than 4")
        }
    }
    
    func transform() -> [Double] {
        let median: Double = median(of: decimals)
        let quartiles: (Double, Double, Double) = quartiles()
        return decimals.map { $0 - median / quartiles.2 - quartiles.0 }
    }
    
}

// MARK: - Extensions
extension RobustScaler: CalculationAttributes {
    fileprivate func median(of decimals: [Double]) -> Double {
        let sorted: [Double] = decimals.sorted()
        return size % 2 == 0 ? (sorted[size/2-1] + sorted[size/2])/2 : sorted[size/2]
    }
    
    fileprivate func quartiles() -> (Double, Double, Double) {
        if size % 2 == 0 {
            if size % 4 == 0 {
                return evenDivisible()
            } else {
                return evenUndivisible()
            }
        } else {
            if size % 4 == 0 {
                return oddDivisible()
            } else {
                return oddUndivisible()
            }
        }
    }
}

extension RobustScaler: QuartileCalculation {
    fileprivate func oddDivisible() -> (Double, Double, Double) {
        (
            decimals[(1 * (size + 1)) / 4],
            decimals[(2 * (size + 1)) / 4],
            decimals[(3 * (size + 1)) / 4]
        )
    }

    fileprivate func oddUndivisible() -> (Double, Double, Double) {
        (
            (decimals[(size-1)/4] + decimals[(size+3)/4])/2,
            decimals[(2 * (size + 2)) / 4],
            (decimals[((3*size)+1)/4] + decimals[((3*size)+5)/4])/2
        )
    }

    fileprivate func evenDivisible() -> (Double, Double, Double) {
        (
            (decimals[size/4] + decimals[(size/4)+1])/2,
            (decimals[size/2] + decimals[(size/2)+1])/2,
            (decimals[(3*size)/4] + decimals[((3*size)/4)+1])/2
        )
    }

    fileprivate func evenUndivisible() -> (Double, Double, Double) {
        (
            decimals[(size+2)/4],
            (decimals[size/2]+decimals[(size/2)+1]),
            decimals[((3*size)+2)/4]
        )
    }
}
