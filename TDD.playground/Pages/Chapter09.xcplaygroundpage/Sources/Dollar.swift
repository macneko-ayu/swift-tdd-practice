import Foundation

public class Dollar: Money {

    public override init(_ amount: Int, _ currency: String) {
        super.init(amount, currency)
    }

    public override func times(_ multiplier: Int) -> Money {
        return Money.dollar(amount * multiplier)
    }
}


