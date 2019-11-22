//
//  Uber.swift
//  UberQuiz
//
//  Created by yumenosuke koukata on 2019/10/18.
//  Copyright © 2019 yumenosuke koukata. All rights reserved.
//

import Foundation

class Uber {
	
	// n*n  -> -15%
	func eval(_ array: [Int]) -> [Int] {
		return array.enumerated().map { t in
			var a = array
			a.remove(at: t.offset)
			return a.reduce(1, *)
		}
	}
	
	// n+n -> +93%    FAIL ([0,1])
	func eval2(_ array: [Int]) -> [Int] {
		let allProducts = array.filter { $0 != 0 }.reduce(1, *)
		return array.map {
			if $0 > 0 { return allProducts / $0 }
			return 0
		}
	}

	// n*(n + n) -> -108%
	func eval3(_ array: [Int]) -> [Int] {
		return array.map { elem in
			array.filter { $0 != elem }.reduce(1, *)
		}
	}

	
	// n*n -> -36%
	func eval4(_ array: [Int]) -> [Int] {
		var r:[Int] = []
		for i in 0 ..< array.count {
			var n = 1
			array.enumerated().forEach { elem in
				if elem.offset != i {
					n *= elem.element
				}
			}
			r.append(n)
		}
		return r
	}

	
	func eval6(_ array: [Int]) -> [Int] {
//		array.enumerated().map {
//			array[$0.offset] = 1
//		}
		// [3,2,1] => [2,3,6]
		
		// [1,2,1] => 2
		// [3,1,1] => 3
		// [3,2,1] => 6
		
		// => [2,3,6]
		
		return []
	}
	
}
