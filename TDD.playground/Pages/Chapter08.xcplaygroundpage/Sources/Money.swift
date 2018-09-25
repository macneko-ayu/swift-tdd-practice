import Foundation

public class Money {
    var amount: Int = 0

    public func equals<T: Equatable>(_ object: T) -> Bool {
        guard let money = object as? Money else {
            return false
        }

        return amount == money.amount && type(of: self) == type(of: money)
    }

    public static func dollar(_ amount: Int) -> Money {
        return Dollar(amount)
    }

    public static func franc(_ amount: Int) -> Money {
        return Franc(amount)
    }

    public func times(_ multiplier: Int) -> Money {
        fatalError("Abstract")
    }
}

extension Money: Equatable {
    public static func ==(lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount && type(of: lhs) == type(of: rhs)
    }
}
