import XCTest
@testable import FoundationKit

final class LoggerTests: XCTestCase {
    func testLoggerOutput_doesNotCrash() {
        Logger.log("Info log")
        Logger.log("Warning log", level: .warning)
        Logger.log("Error log", level: .error)
    }
}
