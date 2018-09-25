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
 [ ] timesの一般化
 [x] FrancとDollarを比較する
 */

class MoneyTest: XCTestCase {
    func testMultiplication() {
        let five = Dollar(5)
        XCTAssertEqual(Dollar(10), five.times(2), "等価であること")
        XCTAssertEqual(Dollar(15), five.times(3), "等価であること")
    }

    func testEquality() {
        XCTAssertTrue(Dollar(5).equals(Dollar(5)), "Trueになること")
        XCTAssertFalse(Dollar(5).equals(Dollar(6)), "Falseになること")
        XCTAssertTrue(Franc(5).equals(Franc(5)), "Trueになること")
        XCTAssertFalse(Franc(5).equals(Franc(6)), "Falseになること")
        XCTAssertFalse(Franc(5).equals(Dollar(5)), "Falseになること")
   }

    func testFrancMultiplication() {
        let five = Franc(5)
        XCTAssertEqual(Franc(10), five.times(2), "等価であること")
        XCTAssertEqual(Franc(15), five.times(3), "等価であること")
    }
}

MoneyTest.defaultTestSuite.run()

