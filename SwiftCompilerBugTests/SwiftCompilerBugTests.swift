import XCTest

@testable import SwiftCompilerBug

class SwiftCompilerBugTests: XCTestCase {

    func testSwitchCase() {
        XCTAssertTrue(switchCase("hello", "hello"))
    }

}
