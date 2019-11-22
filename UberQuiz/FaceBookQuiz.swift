//
//  FaceBookQuiz.swift
//  UberQuiz
//
//  Created by yumenosuke koukata on 2019/10/23.
//  Copyright © 2019 yumenosuke koukata. All rights reserved.
//

import Foundation


// Given an array of numbers representing the stock prices of a company in chronological order and an integer k,
// return the maximum profit you can make from k buys and sells.
// You must buy the stock before you can sell it,
// and you must sell the stock before you can buy it again.

// For example, given k = 2 and the array [5, 2, 4, 0, 1], you should return 3.



/// Yume's answer
func profit(prices p: [Int], k: Int) -> Int {
	guard k > 0 else { return 0 }
	return (0...p.count).map(p.divided(at:)).map { a, b in
		let maxA = a.pairs.map(sub).max ?? 0
		let maxB = profit(prices: b.array, k: k - 1)
		return maxA + maxB
		}
		.max ?? 0
}

func sub(_ t: (Int, Int)) -> Int {
	return t.0 - t.1
}



func profit1(prices: [Int],  k: Int) -> Int {
	
	// Index
	var profits: [(profit: Int, b: Int, s: Int)] = []
	
	for b in 0 ..< prices.count - 1 {
		for s in b ..< prices.count {
			var p = prices[s] - prices[b]
			if p <= 0 { continue }
			profits.append((p, b, s))
		}
	}

//	var maxes: [(profit: Int, i: Int)] = []
	
	
	
	
//	for t in 0 ..< k {
//		for p1 in 0 ..< profits.count - 1 {
//			for p2 in 1 ..< profits.count {
//
//
//
//
//
//			}
//		}
//	}
	
	
	
	
	print("profits: \(profits)")
	
	
	return 3
}








//func profit(prices: [Int],  k: Int) -> Int {
//
//	var maxes: [Int] = []
//
//	var low = 0
//	var up = 0
//
//
//
//
//	for b in 0 ..< prices.count - 1 {
//		for s in 1 ..< prices.count {
//			if b >= s { continue }
//			var p = prices[s] - prices[b]
//			if p <= 0 { continue }
//
//
//
//			profits.append((p, b, s))
//
//
//
//		}
//	}
//
//
//	return 3
//}













