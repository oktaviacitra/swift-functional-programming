//
//  SortByPrice.swift
//  functional-programming
//
//  Created by Oktavia Citra on 20/08/22.
//

import Foundation

// MARK: - Model
struct Product {
    let name: String
    let category: Category
    let price: Float
    
    enum Category {
        case clothes
        case shoes
        case bags
    }
}

// MARK: - Before
func sortByPrice(in products: [Product]) -> [Product] {
    var result = products
    for i in 0..<result.count - 1 {
        var min_index = i
        for j in i..<result.count {
            if result[i].price < result[min_index].price {
                min_index = j
            }
        }
        let temp = products[i]
        result[i] = result[min_index]
        result[min_index] = temp
    }
    return result
}

// MARK: - After
func sortByPrice(in products: [Product]) -> [Product] {
    products.sorted(by: { $0.price < $1.price })
}
