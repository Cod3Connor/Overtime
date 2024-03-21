import XCTest
@testable import overtimeIAmChallenged

final class overtimeIAmChallengedTests: XCTestCase {

    func testPayCalculation() throws {
        let calculator = PayCalculation()

        var result = calculator.calculateWage(withBasePay: 25, andHours: 0)
        XCTAssert(result == 0, "Expected wage for 0 hours: 0, got \(result)")

        result = calculator.calculateWage(withBasePay: 25, andHours: 30)
        XCTAssert(result == 750, "Expected wage for 30 hours: 750, got \(result)")

        result = calculator.calculateWage(withBasePay: 28, andHours: 30)
        XCTAssert(result == 840, "Expected wage for 30 hours at $28/hour: 840, got \(result)")

        // Test for exactly 40 hours
        result = calculator.calculateWage(withBasePay: 25, andHours: 40)
        XCTAssert(result == 1000, "Expected wage for 40 hours: 1000, got \(result)")

        result = calculator.calculateWage(withBasePay: 25, andHours: 42)
        XCTAssert(result == 1000 + 25 * 1.5 * 2, "Expected wage for 42 hours: \(1000 + 25 * 1.5 * 2), got \(result)")

        result = calculator.calculateWage(withBasePay: 28, andHours: 42)
        XCTAssert(result == 1120 + 28 * 1.5 * 2, "Expected wage for 42 hours at $28/hour: \(1120 + 28 * 1.5 * 2), got \(result)")

        result = calculator.calculateWage(withBasePay: 25, andHours: 60)
        XCTAssert(result == 1000 + 25 * 1.5 * 20, "Expected wage for 60 hours: \(1000 + 25 * 1.5 * 20), got \(result)")

        result = calculator.calculateWage(withBasePay: 25, andHours: 80)
        XCTAssert(result == 1000 + 25 * 1.5 * 40, "Expected wage for 80 hours: \(1000 + 25 * 1.5 * 40), got \(result)")

        result = calculator.calculateWage(withBasePay: 25, andHours: 81)
        XCTAssert(result == 1000 + 25 * 1.5 * 41, "Expected wage for 81 hours: \(1000 + 25 * 1.5 * 41), got \(result)")
    }
}
