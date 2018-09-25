import Foundation

public class Bank {

    public init() {

    }
    
    public func reduce(_ source: Expression, _ to: String) -> Money? {
        return source.reduce(to)
    }
}
