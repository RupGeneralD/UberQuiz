import XCTest
@testable import UberQuiz

class SumTripletTest: XCTestCase {
	
	
//	let fun = K_findTriplet
	
	let c = SumTriplet()
	
	
	
	
	func testTriplet() {
		
		var testCases: [(n: [Int], x: Int, r: Int)] = [
			(n: [-2, 1, 2, 0, -1], x: -3, r: 1),
			(n: [0, 7, 9 ,1], x: -1, r: 0),
			(n: [23,44,1,55,77,33,-1], x: 500, r: 35), // Yume's mind say it's correct
			(n: [-10,-7,-9], x: 3, r: 1),
			(n: [-10,-7,-9,5,6,54,4,6,7,8,5,75,67,4567,456,745,7,467,45,7456,7,4567,456,7456,74,7,456,7456,745,74,567,4567,456,754,67,457,45,745,7,456,7546,7,457,45,745,7,457,45,7456,74,7564,7,457,45,74,57,4567,456,7456,745,67,457,456,7456,7,457,456,7456,7,5467,4576,6547,-345,-6,-8,-5,-65,-43], x: 5000, r: 41980)
		]
		
		
		measure {
			testCases.enumerated().forEach { (index, ele) in
				let result = c.K_findTriplet2(n: ele.n, x: ele.x)
				XCTAssertEqual(result, ele.r, "Index = \(index)")
			}
		}
	}
	
	
	
	
//	func testSumTriplet1() {
//		XCTAssertEqual([-2,1,2,0,-1].answerQuiz1(-3), 1)
//	}
//
////	func testSumTriplet2() {
////		XCTAssertEqual([1,2,3,4,5,6,7,8,9,10,20,30,40,50,60,70,80,90,100,200,300,400,500].answerQuiz1(500), 1448)
////	}
//
//	func testSumTriplet3() {
//		XCTAssertEqual([23,44,1,55,77,33,-1].answerQuiz1(500), 35)
//	}
//
//
//	func testSumTriplet4() {
//
//
//		XCTAssertEqual([0,7,9].answerQuiz1(-1), 0)
//	}
//
//
//	func testSumTriplet54() {
//		XCTAssertEqual([-7,-9,-34].answerQuiz1(45), 0)
//	}
//
//	func testSumTripletTimeMeasure() {
//		measure {
//			XCTAssertEqual([-2,1,2,0,-1].answerQuiz1(-3), 1)
//		}
//	}
	
	
	
	
	
	
	
	
	
}
