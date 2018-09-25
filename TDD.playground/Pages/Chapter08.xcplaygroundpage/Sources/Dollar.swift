import Foundation

public class Dollar: Money {
    public init(_ amount: Int) {
        super.init()
        self.amount = amount
    }

    public override func times(_ multiplier: Int) -> Money {
        return Dollar(amount * multiplier)
    }


}


