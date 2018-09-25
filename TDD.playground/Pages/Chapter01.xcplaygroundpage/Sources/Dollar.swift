import Foundation

public class Dollar {
    public var amount: Int

    public init(_ amount: Int) {
        self.amount = amount
    }

    public func times(_ multiplier: Int) {
        amount *= multiplier
    }
}

