//
//  Algorithms.swift
//  UnitTests
//
//  Created by Andrew on 8/8/20.
//  Copyright © 2020 Andrii Halabuda. All rights reserved.
//

import Foundation

// Separate consonants and vowels
func consonantAndVowel(string: String) -> (consonants: String, vowels: String) {
    let vowels = "aeiouy"
    let consonants = "bcdfghjklmnpqrstvwxz"
    var vowelsOut = ""
    var consonantsOut = ""
    for letter in string {
        if vowels.contains(letter.lowercased()) {
            vowelsOut.append(letter)
        } else if consonants.contains(letter.lowercased()) {
            consonantsOut.append(letter)
        }
    }
    
    return (consonantsOut, vowelsOut)
}

// Remove duplicates in an Array
extension Array where Element: Hashable {
    // Using Dictionary
    func filterDuplicates() -> Self {
        var dict = [Element: Bool]()
        return self.filter { dict.updateValue(true, forKey: $0) == nil }
    }
    // Using Set
    func unique() -> Self {
        var unique = Set<Element>()
        return filter { unique.insert($0).inserted }
    }
}

func minMax(arr: [Int]) -> (Int, Int) {
    var min = arr[0]
    var max = arr[0]
    
    for item in arr {
        if item < min { min = item }
        if item > max { max = item }
    }
    return (min, max)
}

// Check if two strings are anagrams
func checkAnagrams(str1: String, str2: String) -> Bool {
    str1 == String(str2.reversed()) ? true : false
}

// Number of occurrences of a substring in a string
extension String {
    func numberOfOccurrences(substring: String) -> Int {
        return self.components(separatedBy:substring).count - 1
    }
}
