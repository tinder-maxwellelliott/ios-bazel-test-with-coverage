import Foundation

public final class StringGenerator {
    public init() {}

    public func createConstantString() -> String {
        "Constant"
    }

    public func createUUIDString() -> String {
        UUID().uuidString
    }

    func anotherStringMethod() -> String {
        ""
    }
}
