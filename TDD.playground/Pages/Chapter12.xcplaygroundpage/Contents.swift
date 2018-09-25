//: Playground - noun: a place where people can play

import Foundation
import XCTest

/*
 TODO
 [ ] $5 + 10 CHF = $10（レートが2:1の場合）
 [ ] $5 + $5 = $10
 */

class MoneyTest: XCTestCase {
    func testMultiplication() {
        let five: Money = Money.dollar(5)
        XCTAssertEqual(Money.dollar(10), five.times(2), "等価であること")
        XCTAssertEqual(Money.dollar(15), five.times(3), "等価であること")
    }

    func testEquality() {
        XCTAssertTrue(Money.dollar(5).equals(Money.dollar(5)), "Trueになること")
        XCTAssertFalse(Money.dollar(5).equals(Money.dollar(6)), "Falseになること")
        XCTAssertFalse(Money.franc(5).equals(Money.dollar(5)), "Falseになること")
    }

    func testCurrency() {
        XCTAssertEqual("USD", Money.dollar(1).currency)
        XCTAssertEqual("CHF", Money.franc(1).currency)
    }

    func testSimpleAddition() {
        let five = Money.dollar(5)
        let sum: Expression = five.plus(five)
        let bank = Bank()
        let reduced = bank.reduce(sum, "USD")
        XCTAssertEqual(Money.dollar(10), reduced, "等価であること")
    }
}

MoneyTest.defaultTestSuite.run()

