//
//  Quiz1.swift
//  UberQuiz
//
//  Created by yumenosuke koukata on 2019/11/14.
//  Copyright © 2019 yumenosuke koukata. All rights reserved.
//

import Foundation


//extension Collection {
//	func combinations(of n: Int, predicate: ([Element]) -> Bool) -> [[Element]] {
//		guard n > 1 else { return map { [$0] } }
//		guard let x = first else { return [] }
//		let xs = dropFirst()
//		return xs.combinations(of: n-1).map { [x] + $0 } + xs.combinations(of: n).filter(predicate)
//	}
//}

extension Array where Element == Int {
	func answerQuiz1(_ n: Int) -> Int {
		return combinations(of: 3)
			.filter { $0.reduce(0, +) <= n }
			.count
	}
	
//	func answerQuiz2(_ n: Int) -> Int {
//		return flatMap { m in return combinations(of: 2, predicate: { $0[0] + $0[1] <= m } ) }.count
//	}
}

extension Array where Element == [Int] {
	fileprivate var distinct: [Element] {
		return reduce(into: []) {
			guard let l = $0.last else {
				$0 += [$1]
				return
			}
			guard l != $1 else { return }
			$0 += [$1]
		}
	}
}


class SumTriplet {
	
	// Yume
	func Y_findTriplet(n: [Int], x: Int) -> Int {
		return n.answerQuiz1(x)
	}
	
	
	// Brute-force way :(
	func K_findTriplet(n: [Int], x: Int) -> Int {
		var patternCount = 0
		for i in 0 ..< n.count {
			for j in i + 1 ..< n.count {

				for k in j + 1 ..< n.count {
					if n[i] + n[j] + n[k] <= x {
						patternCount += 1
					}
				}
			}
		}
		return patternCount
	}
	func K_findTriplet2(n: [Int], x: Int) -> Int {
		var patternCount = 0
		for i in 0 ..< n.count {
			for j in (i + 1) ..< n.count {
				let target = n[i] + n[j]
				if target <= x && x - target >= 0 {
					patternCount += 1
				}
			}
		}
		return patternCount
	}
	
	
	
	// Brute-force way :(
	func M_findTriplet(n: [Int], x: Int) -> Int {
		
		let s = n.sorted()
		
		var triplesArray: [(Int, Int, Int)] = []
		for i in 0 ..< s.count {
			for j in i + 1 ..< s.count {
				if s[i] + s[j] > x {
					break}
				for k in j + 1 ..< s.count {
					if s[i] + s[j] + s[k] <= x {
						triplesArray.append((s[i], s[j], s[k]))
					}
				}
			}
		}
		return triplesArray.count
	}

	
	func S_findTriplet(n:[Int], x: Int) -> Int {
		let count = n.count
		
		if count < 3 {
			return 0
		}
		
		let s = n.sorted()
//		let max: Int
//		let add: Int
//		if s[0] < 0 {
//			max = x - s[0]
//			add = (-s[0]) * 3
//		} else {
//			max = x
//			add = 0
//		}
		
//		print("add = \(add)  max = \(max)")

		
		for i in 2 ..< count {
			let sum = s[i - 2] + s[i - 1] + s[i]
			if sum > x {
				
				print("i \(i)  sum = \(sum)")
				
				return (i * (i - 1) * (i - 2)) / 6
			}
		}
		
		
		return (count * (count - 1) * (count - 2)) / 6
	}
}


