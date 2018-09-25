//: Playground - noun: a place where people can play

import Foundation
import XCTest

/*
 TODO
 [ ] $5 + 10 CHF = $10（レートが2:1の場合）
 [ ] $5 + $5 = $10
 [ ] $5 + $5 がMoneyを返す
 [x] Bank.reduce(Money)
 [ ] Moneyを変換して換算を行う
 [ ] Reduce(Bank, String)
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

    func testPlusReturnSum() {
        let five = Money.dollar(5)
        let result: Expression = five.plus(five)
        guard let sum = result as? Sum else {
            assertionFailure("型が違う")
            return
        }
        XCTAssertEqual(five, sum.augend)
        XCTAssertEqual(five, sum.addend)
    }

    func testReduceSum() {
        let sum: Expression = Sum(Money.dollar(3), Money.dollar(4))
        let bank = Bank()
        let result = bank.reduce(sum, "USD")
        XCTAssertEqual(Money.dollar(7), result, "等価であること")
    }

    func testReduceMoney() {
        let bank = Bank()
        let result = bank.reduce(Money.dollar(1), "USD")
        XCTAssertEqual(Money.dollar(1), result, "等価であること")
    }
}

MoneyTest.defaultTestSuite.run()

