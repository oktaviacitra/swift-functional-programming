//
//  DataSplitter.swift
//  functional-programming
//
//  Created by Oktavia Citra on 22/09/22.
//

import Foundation

typealias DataTuple = (features: [[[Double]]], labels: [Int])

class DataSplitter {
    private let features: [[[Double]]]
    private let labels: [Int]
    private let allSize: Int
    private let indices: [Int]
    
    init(features: [[[Double]]], labels: [Int]) {
        self.features = features
        self.labels = labels
        
        guard self.features.count == self.labels.count else {
            fatalError("The length of features and labels are not same")
        }
        self.allSize = self.features.count
        self.indices = Array(0..<self.allSize).shuffled()
    }
    
    func execute(with testPercentage: Double = 0.3) -> (train: DataTuple, test: DataTuple) {
        let shuffledFeatures: [[[Double]]] = indices.map { features[$0] }
        let shuffledLabels: [Int] = indices.map { labels[$0] }
        let testSize: Int = Int( testPercentage * Double(allSize) )
        return ( train: (features: Array(shuffledFeatures[testSize..<allSize]),
                         labels: Array(shuffledLabels[testSize..<allSize])),
                 test: (features: Array(shuffledFeatures[0..<testSize]),
                        labels: Array(shuffledLabels[0..<testSize]))
        )
    }
}
