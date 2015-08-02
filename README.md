swiftf
============================

_swiftf_ provides some higher-order methods for `Array` and `Optional`.

Usage
----------------------------

### Array

#### flatMap of Swift 2.0

```swift
let strings: [String] = ["2", "3", "four", "5"]
let numbers = strings.flatMap { $0.toInt() } // [2, 3, 5]
```

#### each

```swift
[2, 3, 5].each { println($0) }
```

### Optional

#### each

```swift
let a: Int? = 2
let b: Int? = nil

a.each { println($0) } // 2
b.each { println($0) } // prints nothing
```

#### filter

```swift
let a: Int? = 2
let b: Int? = 3
let c: Int? = nil
a.filter { $0 % 2 == 0 } // Optional(2)
b.filter { $0 % 2 == 0 } // nil
c.filter { $0 % 2 == 0 } // nil
```

#### reduce

```swift
let name1: String? = "world"
let name2: String? = nil

let r1: String = name1.reduce("Hello") { $0 + ", " + $1} // Hello, world
let r2: String = name2.reduce("Hello") { $0 + ", " + $1} // Hello
```

How to Install
----------------------------

Put [swiftf.swift](Project/swiftf/swiftf.swift) into your project.

License
----------------------------

[The MIT License](LICENSE)
