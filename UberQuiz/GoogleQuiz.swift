//
//  GoogleQuiz.swift
//  UberQuiz
//
//  Created by yumenosuke koukata on 2019/10/21.
//  Copyright © 2019 yumenosuke koukata. All rights reserved.
//

import Foundation

/*

This problem was recently asked by Google.
Given a list of numbers and a number k,
return whether any two numbers from the list add up to k.
For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
Bonus: Can you do this in one pass?

*/

//func answer1(_ array: [Int],_  k: Int) -> Bool {
//	return Set(array).combinations(of: 2).contains { $0[0] + $0[1] == k }
//}


// Worse: O(n)
func answer(_ array: [Int],_  k: Int) -> Bool {
	
	var readNumber = Set<Int>()
	
	for number in array {
		let targetNumber = k - number
		if readNumber.contains(targetNumber) {
			return true
		} else {
			readNumber.insert(number)
		}
	}
	
	return false
}

func answer3(_ array:[Int], _ k: Int) -> Bool {
    for i in 0 ..< array.count - 1 {
        for n in (i+1) ..< array.count {
            if array[i] + array[n] == k {
                return true
            }
        }
    }
    return false
}

func answer4(_ array:[Int], _ k: Int) -> Bool {
    let s = Set(array)
    for i in array {
        if s.contains(k - i) {
            return true
        }
    }
    return false
}
