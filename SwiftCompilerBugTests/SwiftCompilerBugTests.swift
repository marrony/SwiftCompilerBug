import XCTest

@testable import SwiftCompilerBug

class SwiftCompilerBugTests: XCTestCase {

    func testEquality1() {
        let a: Value = IntV(10)
        let b: Value = IntV(10)
        XCTAssertTrue(a == b, "\(a) == \(b)")
    }

    func testEquality2() {
        let a: Value = IntV(10)
        let b: Value = IntV(20)
        XCTAssertTrue(a != b, "\(a) != \(b)")
    }
}
