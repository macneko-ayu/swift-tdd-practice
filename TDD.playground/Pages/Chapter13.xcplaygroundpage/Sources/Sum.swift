import Foundation

public class Sum {
    public var augend: Money
    public var addend: Money

    public init(_ augend: Money, _ addend: Money) {
        self.augend = augend
        self.addend = addend
    }
}

extension Sum: Expression {
    public func reduce(_ to: String) -> Money {
        let amount = augend.amount + addend.amount
        return Money(amount, to)
    }
}
