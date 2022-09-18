//
//  MinimumNumbers.swift
//  functional-programming
//
//  Created by Oktavia Citra on 18/09/22.
//

import Foundation

// MARK: - Helper
struct Item {
    let title: String
    let price: Int
}
// MARK: - Before
func getMinimumPrice(of items: [Item]) -> Item {
    var temp = items[0]
    for item in items {
        if temp.price > item.price {
            temp = item
        }
    }
    return temp
}

// MARK: - After
func getMinimumPrice(of items: [Item]) -> Item? {
    items.min(by: {$0.price < $1.price})
}

