import XCTest
import swiftf

class Sample: XCTestCase {
    func testSample() {
        ///// Optional /////
        
        // forEach
        if true {
            let a: Int? = 2
            let b: Int? = nil
            
            a.forEach { print($0) } // 2
            b.forEach { print($0) } // prints nothing
        }
        
        // filter
        if true {
            let a: Int? = 2
            let b: Int? = 3
            let c: Int? = nil
            
            let r1: Int? = a.filter { $0 % 2 == 0 } // Optional(2)
            let r2: Int? = b.filter { $0 % 2 == 0 } // nil
            let r3: Int? = c.filter { $0 % 2 == 0 } // nil
            
            print(r1)
            print(r2)
            print(r3)
        }
        
        // reduce
        if true {
            let name1: String? = "world"
            let name2: String? = nil
            
            let r1: String = name1.reduce("Hello") { $0 + ", " + $1} // Hello, world
            let r2: String = name2.reduce("Hello") { $0 + ", " + $1} // Hello
            
            print(r1)
            print(r2)
        }
    }
}
