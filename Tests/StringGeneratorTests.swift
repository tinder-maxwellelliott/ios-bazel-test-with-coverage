import XCTest
@testable import StringGenerator

final class StringGeneratorTests: XCTestCase {
    func testConstantString() {
        let generator: StringGenerator = .init()
        XCTAssertEqual(generator.createConstantString(), "Constant")
    }
}
