import XCTest
@testable import shared_lib

final class shared_libTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(shared_lib().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
