import Foundation

extension Optional {
    public func reduce<U>(_ initialResult: U, nextPartialResult: (U, Wrapped) -> U) -> U {
        switch self {
        case .none:
            return initialResult
        case .some(let value):
            return nextPartialResult(initialResult, value)
        }
    }
    
    public func filter(isIncluded: (Wrapped) -> Bool) -> Wrapped? {
        return flatMap { isIncluded($0) ? $0 : nil }
    }
    
    public func forEach(action: (Wrapped) -> ()) {
        reduce(()) { action($1) }
    }
}
