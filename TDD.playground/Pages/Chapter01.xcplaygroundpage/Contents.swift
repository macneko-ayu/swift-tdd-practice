//: Playground - noun: a place where people can play

import Foundation
import XCTest

/*
 TODO
 [ ] $5 + 10 CHF = $10
 [x] $5 * 2 = $10
 [ ] amountをprivateにする
 [ ] Dollarの副作用をどうする？
 [ ] Moneyの丸め処理をどうする
 */

class MoneyTest: XCTestCase {
    func testMultiplication() {
        let five = Dollar(5)
        five.times(2)
        XCTAssertEqual(10, five.amount)
    }
}

MoneyTest.defaultTestSuite.run()

