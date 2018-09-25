import Foundation

public class Dollar {
    public var amount: Int

    public init(_ amount: Int) {
        self.amount = amount
    }

    public func times(_ multiplier: Int) -> Dollar {
        return Dollar(amount * multiplier)
    }

    public func equals(_ object: Any) -> Bool {
        guard let dollar = object as? Dollar else {
            return false
        }

        return amount == dollar.amount
    }
}

