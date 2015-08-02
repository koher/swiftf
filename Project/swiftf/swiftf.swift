import Foundation

extension Optional {
    func reduce<U>(initial: U, @noescape combine: (U, T) -> U) -> U {
        switch self {
        case .None:
            return initial
        case .Some(let value):
            return combine(initial, value)
        }
    }
    
    func filter(@noescape includeElement: T -> Bool) -> T? {
        return flatMap { includeElement($0) ? $0 : nil }
    }
    
    func each(@noescape action: T -> ()) {
        reduce(()) { action($1) }
    }
}

extension Array {
    func each(@noescape action: T -> ()) {
        reduce(()) { action($1) }
    }
    
    func flatMap<U>(@noescape transform: T -> U?) -> [U] {
        return flatMap { transform($0).map { [$0] } ?? [] }
    }
}
