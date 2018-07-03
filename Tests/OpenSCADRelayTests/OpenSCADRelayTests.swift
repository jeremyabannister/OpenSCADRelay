import XCTest
@testable import OpenSCADRelay

final class OpenSCADRelayTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(OpenSCADRelay().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
