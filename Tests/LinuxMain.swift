import XCTest

import shared_libTests

var tests = [XCTestCaseEntry]()
tests += shared_libTests.allTests()
XCTMain(tests)
