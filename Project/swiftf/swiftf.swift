import Foundation

extension Optional {
	func reduce<U>(initial: U, combine: (U, T) -> U) -> U {
		switch self {
		case .None:
			return initial
		case .Some(let value):
			return combine(initial, value)
		}
	}
	
	func flatMap<U>(transform: T -> U?) -> U? {
		return map(transform).reduce(nil) { $1 }
	}
	
	func filter(includeElement: T -> Bool) -> T? {
		return flatMap { includeElement($0) ? $0 : nil }
	}
	
	func each(action: T -> ()) {
		reduce(()) { action($1) }
	}
}

extension Array {
	func flatMap<U>(transform: T -> [U]) -> [U] {
		return map(transform).reduce([], +)
	}
	
	func each(action: T -> ()) {
		reduce(()) { action($1) }
	}
}
