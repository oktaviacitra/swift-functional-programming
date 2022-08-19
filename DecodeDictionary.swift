//
//  DecodeDictionary.swift
//  functional-programming
//
//  Created by Oktavia Citra on 19/08/22.
//

import Foundation

// MARK: - Before
struct Student {
    let name: String
    let major: String
}

func decode(_ dictionaries: [[String : Any]]) -> [Student]? {
    var students = [Student]()
    for dictionary in dictionaries {
        guard let name = dictionary["name"] as? String,
              let major = dictionary["major"] as? String else {
            return nil
        }
        let student = Student(name: name, major: major)
        students.append(student)
    }
    return students
}

// MARK: - After
struct Student {
    let name: String
    let major: String
}

extension Student {
    init?(from dictionary: [String: Any]) {
        guard let name = dictionary["name"] as? String,
              let major = dictionary["major"] as? String else {
            return nil
        }
        self.init(name: name, major: major)
    }
}

func decode(_ dictionaries: [[String : Any]]) -> [Student]? {
    dictionaries.compactMap { Student(from: $0) }
}
