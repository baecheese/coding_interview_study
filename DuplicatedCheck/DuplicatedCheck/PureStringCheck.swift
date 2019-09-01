//
//  PureStringCheck.swift
//  DuplicatedCheck
//
//  Created by 배지영 on 01/09/2019.
//  Copyright © 2019 배지영. All rights reserved.
//

import Foundation

class PureStringChecker {
    
    let sentence: String
    
    var lastIndex: Int {
        return sentence.isEmpty ? 0 : sentence.count
    }
    
    init(_ string: String) {
        sentence = string
    }
    
    var isDuplicatedChar: Bool {
        for char in sentence {
            var countToCurrentChar: Int = 0
            for innerChar in sentence {
                if char == innerChar {
                    countToCurrentChar += 1
                }
                if 2 <= countToCurrentChar {
                    return true
                }
            }
        }
        return false
    }
    
}
