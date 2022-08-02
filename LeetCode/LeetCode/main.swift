//
//  412. Fizz Buzz.swift
//
//  Created by Abdullah Ayan on 29.07.2022.
//

import Foundation

//Runtime: 26 ms, faster than 72.85% of Swift online submissions for Fizz Buzz.
//Memory Usage: 14.2 MB, less than 100.00% of Swift online submissions for Fizz Buzz.

func fizzBuzz(_ n: Int) -> [String] {
    var array = [String]()
    for i in 1...n {
        if i % 3 == 0 {
            if i % 5 == 0 {
                array.append("FizzBuzz")
            }else {
                array.append("Fizz")
            }
        } else if i % 5 == 0 {
            array.append("Buzz")
        } else {
            array.append("\(i)")
        }
    }
    return array
}

print(fizzBuzz(15))
