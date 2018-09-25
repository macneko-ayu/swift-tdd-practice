import Foundation

public class Franc: Money {

    public init(_ amount: Int) {
        super.init()
        self.amount = amount
    }

    public override func times(_ multiplier: Int) -> Money {
        return Franc(amount * multiplier)
    }
}
