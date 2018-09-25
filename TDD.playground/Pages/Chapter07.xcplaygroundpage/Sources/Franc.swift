import Foundation

public class Franc: Money {

    public init(_ amount: Int) {
        super.init()
        self.amount = amount
    }

    public func times(_ multiplier: Int) -> Franc {
        return Franc(amount * multiplier)
    }
}
