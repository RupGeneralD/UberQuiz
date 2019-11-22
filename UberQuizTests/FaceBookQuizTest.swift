//
//  FaceBookQuizTest.swift
//  UberQuizTests
//
//  Created by yumenosuke koukata on 2019/10/23.
//  Copyright © 2019 yumenosuke koukata. All rights reserved.
//

import XCTest
@testable import UberQuiz

class FaceBookQuizTest: XCTestCase {

    func testProfit1() {
        XCTAssertEqual(profit(prices: [5, 2, 4, 0, 1], k: 2), 3)
    }

	func testProfit2() {
		XCTAssertEqual(profit(prices: [5, 2, 4, 0, 1, 5], k: 2), 7)
	}

	func testProfit3() {
		XCTAssertEqual(profit(prices: [0, 5, 2, 4, 1, 2, 6], k: 2), 10)
	}

	
	
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
			XCTAssertEqual(profit(prices: [0, 5, 2, 4, 1, 2, 6], k: 2), 10)
        }
    }

	
	func testMaxPerformance() {
		// This is an example of a performance test case.
		self.measure {
			// Put the code you want to measure the time of here.
			XCTAssertEqual([1,0,5,2,4,1,2,6,5,6,45,3,32,4,5,5,67,5,2,4,3,4,5,5,4,5,99999,6,5,34,3,4,5,6,7,8,9,78,6,5,54,4,3,32,3,4,5,65,6,7,67,5,5,4,4,43,5,5,6,76,6,5,4,4,4,5,6,67,7,7,67,56,5,45,4,4,5,56,6,6,6,5,45,4,56].max, 99999)
		}
	}

	
	
}
