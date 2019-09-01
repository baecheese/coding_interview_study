//
//  main.swift
//  Permutation
//
//  Created by 배지영 on 01/09/2019.
//  Copyright © 2019 배지영. All rights reserved.
//

/*
 1.2 순열확인: 문자열 두 개가 주어졌을 때
 이 둘이 서로 순열 관계에 있는지 확인하는 메서드를 작성하라.
 (여기서 서로 순열 관계란, 두 문자열의 길이가 같으며, 요소가 같은 구성을 의미
 예. “abc”와 “cba”는 서로 순열)
 */

import Foundation

// Time complexity: O(N)
// Space complexity: O(N)
func isPermutation(_ string: String, _ compare: String) -> Bool {
    guard string.count == compare.count else { return false }
    guard !string.isEmpty else { return true }// 둘다 Empty 일 경우, 순열이 맞는지는 확인 필요
    let strArr = Array(string)
    let compareArr = Array(compare)
    var strDic: [String: Int] = [:]
    var compareDic: [String: Int] = [:]
    for index in 0...string.count-1 {
        let s = strArr[index].description
        let c = compareArr[index].description
        strDic[s] = (strDic[s] ?? 0) + 1
        compareDic[c] = (compareDic[c] ?? 0) + 1
    }
    guard strDic.count == compareDic.count else { return false }
    for (key, value) in strDic {
        if compareDic[key] != value {
            return false
        }
    }
    return true
}

print(isPermutation("1234", "1234"))
print(isPermutation("1234", "5678"))
