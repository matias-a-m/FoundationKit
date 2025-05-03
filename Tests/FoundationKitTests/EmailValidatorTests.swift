import XCTest
@testable import FoundationKit

final class EmailValidatorTests: XCTestCase {
    func testValidEmail_returnsTrue() {
        XCTAssertTrue(EmailValidator.isValid("user@example.com"))
    }

    func testInvalidEmail_returnsFalse() {
        XCTAssertFalse(EmailValidator.isValid("invalid-email"))
    }
}
