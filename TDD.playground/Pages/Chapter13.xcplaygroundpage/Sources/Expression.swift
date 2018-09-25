import Foundation

public protocol Expression {
    func reduce(_ to: String) -> Money
}
