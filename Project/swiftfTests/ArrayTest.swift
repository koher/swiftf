import XCTest
import swiftf

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
        
        let strings: [String] = ["2", "3", "four", "5"]
        let numbers = strings.flatMap { Int($0) }
        
        XCTAssertEqual(numbers, [2, 3, 5])
    }
    
    func testForEach() {
        let a = [2, 3, 5]
        var i = 0
        a.forEach { XCTAssertEqual($0, a[i++]) }
    }
}
