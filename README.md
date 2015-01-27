swiftf
============================

_swiftf_ provides some higher-order methods for `Array` and `Optional`.

Usage
----------------------------

### Array

#### flatMap

```swift
["one", "2", "3", "four", "5"].flatMap { $0.toInt() } // [2, 3, 5]
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
let c: Int? = a.flatMap { a0 in b.flatMap { b0 in a0 + b0 } } // Optional(5)
```

#### each

```swift
let a: Int? = 2
let b: Int? = nil
a.each { println(a) } // 2
b.each { println(b) } // prints nothing
```

#### reduce

```swift
let name1: String? = "world"
let name2: String? = nil
println(name1.reduce("Hello") { $0 + ", " + $1)) // Hello, world
println(name2.reduce("Hello") { $0 + ", " + $1)) // Hello
```

License
----------------------------

[The MIT License](LICENSE)
