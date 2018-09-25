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
 */

class MoneyTest: XCTestCase {
    func testMultiplication() {
        let five = Dollar(5)
//        var product = five.times(2)
        XCTAssertEqual(Dollar(10), five.times(2), "等価であること")
//        product = five.times(3)
        XCTAssertEqual(Dollar(15), five.times(3), "等価であること")
    }

    func testEquality() {
        XCTAssertTrue(Dollar(5).equals(Dollar(5)), "Trueになること")
        XCTAssertFalse(Dollar(5).equals(Dollar(6)), "Falseになること")
    }
}

MoneyTest.defaultTestSuite.run()

