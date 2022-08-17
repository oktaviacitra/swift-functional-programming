//
//  FilterWithCriteria.swift
//  functional-programming
//
//  Created by Oktavia Citra on 17/08/22.
//

import Foundation

// MARK: - Model
struct Profile {
    let name: String
    let age: Int
}
/*
 For example, I created a model to test the function for filter based on attribute inside.
 */

// MARK: - Before
func filter(on profiles: [Profile],
            with comparison: ((Int, Int) -> Bool),
            for anchor: Int ) -> [Profile] {
    var result = [Profile]()
    for profile in profiles {
        if comparison(profile.age, anchor) {
            result.append(profile)
        }
    }
    return result
}
/*
 I create parameter 'comparison' as closure,
 so this function can be used for any binary operators.
 */

// MARK: - After
func filter(on profiles: [Profile],
            with comparison: ((Int, Int) -> Bool),
            for anchor: Int ) -> [Profile] {
    profiles.filter({ comparison($0.age, anchor) })
}
/*
 as well as SumOfNumbers.swift,
 this just need codes in one line using a function from Swift.
 */
