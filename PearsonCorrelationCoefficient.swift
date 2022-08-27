//
//  PearsonCorrelationCoefficient.swift
//  functional-programming
//
//  Created by Oktavia Citra on 27/08/22.
//

import Foundation

struct PearsonCorrelationCoefficient {
    let x: [Double]
    let y: [Double]
}

// MARK: - Exetensions

extension PearsonCorrelationCoefficient: Calculation {
    func distance() -> Double {
        numerator() / denominator()
    }
}

extension PearsonCorrelationCoefficient: CentralTendency {
    fileprivate func mean(of array: [Double]) -> Double {
        array.reduce(0, +) / Double(array.count)
    }
    
    fileprivate func coefficient(by mean: Double, for array: [Double]) -> Double {
        array.map { pow( ($0 - mean ), 2.0) }.reduce(0, +)
    }
}

extension PearsonCorrelationCoefficient: Divider {
    fileprivate func numerator() -> Double {
        let mean = (x: mean(of: x), y: mean(of: y))
        return zip(x, y).map { ($0.0 - mean.x) * ($0.1 - mean.y) }.reduce(0, +)
    }
    
    fileprivate func denominator() -> Double {
        let mean = (x: mean(of: x), y: mean(of: y))
        return sqrt( coefficient(by: mean.x, for: x)  * coefficient(by: mean.y, for: y) )
    }
}

// MARK: - Protocols

fileprivate protocol Divider {
    func numerator() -> Double
    func denominator() -> Double
}

fileprivate protocol CentralTendency {
    func mean(of array: [Double]) -> Double
    func coefficient(by mean: Double, for array: [Double]) -> Double
}

fileprivate protocol Calculation {
    func distance() -> Double
}
