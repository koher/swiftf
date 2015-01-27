swiftf
============================

_swiftf_ provides some higher-order methods for `Array` and `Optional`.

Usage
----------------------------

### Array

#### flatMap

```swift
let r: [Int] = [1, 2, 3].flatMap { [Int](count: $0, repeatedValue: $0) } // [1, 2, 2, 3, 3, 3]
```

#### each

```swift
[2, 3, 5].each { println($0) }
```

### Optional

#### flatMap

```swift
let a: Int? = 2
let b: Int? = 3

let r: Int? = a.flatMap { a0 in b.flatMap { b0 in a0 + b0 } } // Optional(5)
```

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

let r1: Int? = a.filter { $0 % 2 == 0 } // Optional(2)
let r2: Int? = b.filter { $0 % 2 == 0 } // nil
let r3: Int? = c.filter { $0 % 2 == 0 } // nil
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

License
----------------------------

[The MIT License](LICENSE)
