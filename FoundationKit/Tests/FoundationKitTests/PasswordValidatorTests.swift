import XCTest
@testable import FoundationKit

final class PasswordValidatorTests: XCTestCase {
    func testWeakPassword() {
        XCTAssertEqual(PasswordValidator.strength(of: ""), .weak)
        XCTAssertEqual(PasswordValidator.strength(of: "123"), .weak)
    }

    func testMediumPassword() {
        XCTAssertEqual(PasswordValidator.strength(of: "abc12345"), .medium)
        XCTAssertEqual(PasswordValidator.strength(of: "password1"), .medium)
    }

    func testStrongPassword() {
        XCTAssertEqual(PasswordValidator.strength(of: "A1b2C3!@#123"), .strong)
        XCTAssertEqual(PasswordValidator.strength(of: "Qwerty@1234"), .strong)
    }
}
