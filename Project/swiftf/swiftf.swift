import Foundation

extension Optional {
    public func reduce<U>(initial: U, @noescape combine: (U, Wrapped) -> U) -> U {
        switch self {
        case .None:
            return initial
        case .Some(let value):
            return combine(initial, value)
        }
    }
    
    public func filter(@noescape includeElement: Wrapped -> Bool) -> Wrapped? {
        return flatMap { includeElement($0) ? $0 : nil }
    }
    
    public func forEach(@noescape action: Wrapped -> ()) {
        reduce(()) { action($1) }
    }
}
