import Foundation

public class Franc: Equatable {
    private var amount: Int

    public init(_ amount: Int) {
        self.amount = amount
    }

    public func times(_ multiplier: Int) -> Franc {
        return Franc(amount * multiplier)
    }

    public func equals(_ object: Any) -> Bool {
        guard let franc = object as? Franc else {
            return false
        }

        return amount == franc.amount
    }

    public static func ==(lhs: Franc, rhs: Franc) -> Bool {
        return lhs.amount == rhs.amount
    }
}

