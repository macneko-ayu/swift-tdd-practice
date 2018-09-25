import Foundation

public class Money {
    var amount: Int
    public var currency: String

    public init(_ amount: Int, _ currency: String) {
        self.amount = amount
        self.currency = currency
    }

    public func equals<T: Equatable>(_ object: T) -> Bool {
        guard let money = object as? Money else {
            return false
        }

        return amount == money.amount && currency == money.currency
    }

    public static func dollar(_ amount: Int) -> Money {
        return Money(amount, "USD")
    }

    public static func franc(_ amount: Int) -> Money {
        return Money(amount, "CHF")
    }

    public func times(_ multiplier: Int) -> Money {
        return Money(amount * multiplier, currency)
    }

    public func toString() -> String{
        return "(\(amount) \(currency))"
    }
}

extension Money: Equatable {
    public static func ==(lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && lhs.currency == rhs.currency
    }
}
