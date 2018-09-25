//: Playground - noun: a place where people can play

import Foundation
import XCTest

/*
 TODO
 [ ] $5 + 10 CHF = $10
 [x] $5 * 2 = $10
 [x] amountをprivateにする
 [x] Dollarの副作用をどうする？
 [ ] Moneyの丸め処理をどうする
 [x] equals()
 [ ] hashCode()
 [ ] nullとの等価性比較
 [ ] 他のオブジェクトとの等価性比較
 [x] 5 CHF * 2 = 10 CHF
 [ ] DollarとFrancの重複
 [x] equalsの一般化
 [x] timesの一般化
 [x] FrancとDollarを比較する
 [x] 通過の概念
 [ ] testFrancMultiplicationを削除する？
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
        XCTAssertTrue(Money.franc(5).equals(Money.franc(5)), "Trueになること")
        XCTAssertFalse(Money.franc(5).equals(Money.franc(6)), "Falseになること")
        XCTAssertFalse(Money.franc(5).equals(Money.dollar(5)), "Falseになること")
    }

    func testFrancMultiplication() {
        let five = Money.franc(5)
        XCTAssertEqual(Money.franc(10), five.times(2), "等価であること")
        XCTAssertEqual(Money.franc(15), five.times(3), "等価であること")
    }

    func testCurrency() {
        XCTAssertEqual("USD", Money.dollar(1).currency)
        XCTAssertEqual("CHF", Money.franc(1).currency)
    }

    func testDiffrentClassEquality() {
        XCTAssertTrue(Money(10, "CHF").equals(Franc(10, "CHF")), "Trueになること")
    }
}

MoneyTest.defaultTestSuite.run()

