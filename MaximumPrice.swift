//
//  MaximumPrice.swift
//  functional-programming
//
//  Created by Oktavia Citra on 19/09/22.
//

import Foundation

// MARK: - Before
func getMaximumPrice(of items: [Item]) -> Item? {
    var temp = items[0]
    for item in items {
        if temp.price < item.price {
            temp = item
        }
    }
    return temp
}

// MARK: - After
func getMaximumPrice(of items: [Item]) -> Item? {
    items.max(by: {$0.price > $1.price})
}
