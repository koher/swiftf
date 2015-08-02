import XCTest

class OptionalTest: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testFlatMap() {
        let a: Int? = 2
        let b: Int? = 3
        
        let r: Int? = a.flatMap { a0 in b.flatMap { b0 in a0 + b0 } } // Optional(5)
        
        XCTAssertEqual(r!, 5)
    }
    
    func testEach() {
        let a: Int? = 2
        let b: Int? = nil
        
        a.each { XCTAssertEqual($0, a!) }
        b.each { XCTFail("Never reaches here: \($0)") }
    }
    
    func testFilter() {
        let a: Int? = 2
        let b: Int? = 3
        let c: Int? = nil
        
        let r1: Int? = a.filter { $0 % 2 == 0 } // Optional(2)
        let r2: Int? = b.filter { $0 % 2 == 0 } // nil
        let r3: Int? = c.filter { $0 % 2 == 0 } // nil
        
        XCTAssertTrue(r1 == 2)
        XCTAssertTrue(r2 == nil)
        XCTAssertTrue(r3 == nil)
    }
    
    func testReduce() {
        let name1: String? = "world"
        let name2: String? = nil
        
        let r1: String = name1.reduce("Hello") { $0 + ", " + $1} // Hello, world
        let r2: String = name2.reduce("Hello") { $0 + ", " + $1} // Hello
        
        XCTAssertEqual(r1, "Hello, world")
        XCTAssertEqual(r2, "Hello")
    }
}
