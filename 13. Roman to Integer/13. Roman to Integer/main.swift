//
//  main.swift
//  13. Roman to Integer
//
//  Created by Abdullah Ayan on 19.07.2022.
//

import Foundation

class Solution {
    var romanNumbersDict : [Character: Int] = ["M":1000,"D":500,"C":100,"L":50,"X":10,"V":5,"I":1]
    
    func romanToInt(_ s: String) -> Int {
        var total = 0
        var lastCharValue: Int!
        for char in s {
            if let lcv = lastCharValue {
                let romanValue = romanNumbersDict[char] ?? 0
                if  romanValue <= lcv {
                    total += romanValue
                }else {
                    total += -2 * lcv + romanValue
                }
            }else {
                total += romanNumbersDict[char] ?? 0
            }
            lastCharValue = romanNumbersDict[char]
        }
        return total
    }
}
