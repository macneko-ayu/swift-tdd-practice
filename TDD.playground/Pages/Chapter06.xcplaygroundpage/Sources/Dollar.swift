import Foundation

public class Dollar: Money {
    public init(_ amount: Int) {
        super.init()
        self.amount = amount
    }

    public func times(_ multiplier: Int) -> Dollar {
        return Dollar(amount * multiplier)
    }
}


