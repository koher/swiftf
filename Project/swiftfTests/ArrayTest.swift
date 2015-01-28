import XCTest

class ArrayTest: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testFlatMap() {
		let r1: [Int] = [[2], [3, 5], [7, 11, 13]].flatMap { $0 } // [2, 3, 5, 7, 11, 13]
		let r2: [Int] = [1, 2, 3].flatMap { [Int](count: $0, repeatedValue: $0) } // [1, 2, 2, 3, 3, 3]
		
		XCTAssertEqual(r1, [2, 3, 5, 7, 11, 13])
		XCTAssertEqual(r2, [1, 2, 2, 3, 3, 3])
    }
	
	func testEach() {
		let a = [2, 3, 5]
		var i = 0
		a.each { XCTAssertEqual($0, a[i++]) }
	}
}
