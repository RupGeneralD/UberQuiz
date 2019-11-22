import XCTest
@testable import UberQuiz

class GoogleQuizTests: XCTestCase {
	
	func testGoogle1() {
		XCTAssertTrue(answer([10, 15, 3, 7], 17))
//		XCTAssertFalse(answer([10], 20))
		XCTAssertTrue(answer([2,3,4,5,6,34,2,1,2,3,4,5,65,7,78,89,9,6,5,4,4,3,3,10, 15, 3, 7], 17))
	}
	
	func testPerformance() {
		self.measure {
			_ = answer([10, 15, 3, 7], 17)
			_ = answer([2,3,4,5,6,34,2,1,2,3,4,5,65,7,78,89,9,6,5,4,4,3,3,10, 15, 3, 7], 17)
			_ = answer([2,3,4,5,6,34,2,1,2,3,4,5,65,7,78,89,9,6,5,4,4,3,3,10, 15, 3, 7,100,101], 201)
		}
	}

	
}
