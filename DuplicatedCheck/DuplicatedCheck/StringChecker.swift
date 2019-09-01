//
//  StringChecker.swift
//  DuplicatedCheck
//
//  Created by 배지영 on 01/09/2019.
//  Copyright © 2019 배지영. All rights reserved.
//

import Foundation

class StringChecker {
    
    let sentence: String
    
    init(_ string: String) {
        sentence = string
    }
    
    var isDuplicatedChar: Bool {
        var cache: [Character: Int] = [:]
        for char in sentence {
            if nil == cache[char] {
                cache[char] = 1
            } else {
                return true
            }
        }
        return false
    }
    
    var duplicatedChar : [Character: Int] {
        var cache: [Character: Int] = [:]
        for char in sentence {
            cache[char] = (cache[char] ?? 0) + 1
        }
        return cache.filter({ return 1 < $1 })
    }
}
