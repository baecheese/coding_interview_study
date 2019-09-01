//
//  main.swift
//  DuplicatedCheck
//
//  Created by 배지영 on 01/09/2019.
//  Copyright © 2019 배지영. All rights reserved.
//

import Foundation

/*
문제 1.1 중복이 없는가: 문자열이 주어졌을 때,
 이 문자열에 같은 문자가 중복되어 등장하는지 확인하는 알고리즘을 작성하라.
 자료구조를 추가로 사용하지 않고 풀 수 있는 알고리즘 또한 고민하라.
 
 Q : 알파벳일 경우 대-소문자면 중복인가? -> 일단 다르다고 전제함
*/

let sentence1: String = "zxcvbnm"
let sentence2: String = "zxcvbnmzz"

print(StringChecker(sentence1).isDuplicatedChar)
print(StringChecker(sentence1).duplicatedChar)

print(StringChecker(sentence2).isDuplicatedChar)
print(StringChecker(sentence2).duplicatedChar)

print(PureStringChecker(sentence1).isDuplicatedChar)
print(PureStringChecker(sentence2).isDuplicatedChar)
