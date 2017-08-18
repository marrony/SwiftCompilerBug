import Foundation

public func switchCase(_ left: Any, _ right: Any) -> Bool {
    switch (left, right) {
    case (let lhs, let rhs) as (String, String):
        return lhs == rhs
    default:
        return false
    }
}
