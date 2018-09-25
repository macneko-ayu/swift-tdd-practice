import Foundation

public class Franc: Money {

    public override init(_ amount: Int, _ currency: String) {
        super.init(amount, currency)
    }

    public override func times(_ multiplier: Int) -> Money {
        return Money.franc(amount * multiplier)
    }
}
