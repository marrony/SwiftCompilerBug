import Foundation

public protocol Value {}

public protocol ScalarValue: Value, Equatable {
    associatedtype Wrapped

    var value: Wrapped { get }
}

public func ==<S: ScalarValue>(lhs: S, rhs: S) -> Bool where S.Wrapped: Equatable {
    return lhs.value == rhs.value
}

public struct StringV: ScalarValue, CustomStringConvertible {
    public var value: String

    public init(_ value: String) {
        self.value = value
    }

    public var description: String {
        return "StringV(\(value))"
    }
}

public struct IntV: ScalarValue, CustomStringConvertible {
    public var value: Int

    public init(_ value: Int) {
        self.value = value
    }

    public var description: String {
        return "IntV(\(value))"
    }
}

public func != (left: Value, right: Value) -> Bool {
    return !(left == right)
}

public func == (left: Value, right: Value) -> Bool {
    switch (left, right) {
    case (let lhs, let rhs) as (StringV, StringV): return lhs == rhs
    case (let lhs, let rhs) as (IntV, IntV):       return lhs == rhs
    default: return false
    }
}
