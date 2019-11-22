//
//  UberQuizTests.swift
//  UberQuizTests
//
//  Created by yumenosuke koukata on 2019/10/18.
//  Copyright © 2019 yumenosuke koukata. All rights reserved.
//

/*
Given an array of integers, return a new array
such that each element at index i of the new
array is the product of all the numbers in the
original array except the one at i.

[1, 2, 3, 4, 5] -> [120, 60, 40, 30, 24].
[3, 2, 1] -> [2, 3, 6]
Follow-up: what if you can't use division?
*/

import XCTest
@testable import UberQuiz

class UberQuizTests: XCTestCase {

	let uber = Uber()
	
    func testNewArray() {
		XCTAssertNotNil(uber.eval([]))
    }

	func testUber1() {
		XCTAssertEqual(uber.eval([3,2,1]), [2,3,6])
	}
	
	func testUber2() {
		XCTAssertEqual(uber.eval([1,2,3,4,5]), [120, 60, 40, 30, 24])
	}
	
	func testUber3() {
		XCTAssertEqual(uber.eval([0,1]), [1,0])
	}
	
	func testLength() {
		let a = [0,2,1,4,5,6,6,4,6,9,4,3,6,7,2,3,2,3,4,3,2,3,4,4,3,2,3,4]
		XCTAssertEqual(uber.eval(a).count, a.count)
		let v = [2,1,4,5,6,6,4,6,9,4,3,6,7,2,3,2,3,4,3,2,3,4,4,3,2,3,4].reduce(1, *)
		XCTAssertEqual(uber.eval(a).first, v)
		XCTAssertEqual(uber.eval(a).last, 0)
	}
	
	func testPerformance() {
		self.measure {
//			_ = uber.eval([3,2,1,4,5,6,67,4,34,5,6,7,5,4,45,56,76,78,534,4,5,5,6,7,7,5,4,4,5,6,7,8,7,5,34,3,4,5,6,7,8,6,5,4,45,6,7,4])
//			_ = uber.eval([3,2,1,4,5,6,67,4,34,5,6,7,5,4,45,56,76,78,534,4,5,5,6,7,7,5,4,4,5,6])
			_ = uber.eval([0,2,1,4,5,6,6,4,6,9,4,3,6,7,2,3,2,3,4,3,2,3,4,4,3,2,3,4])
		}
	}

	
}
