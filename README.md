swiftf
============================

_swiftf_ provides some higher-order methods for `Optional`.

Usage
----------------------------

### Optional        

#### forEach

```swift
let a: Int? = 2
let b: Int? = nil

a.forEach { print($0) } // 2
b.forEach { print($0) } // prints nothing
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

####  reduce

```swift
let name1: String? = "world"
let name2: String? = nil

let r1: String = name1.reduce("Hello") { $0 + ", " + $1} // Hello, world
let r2: String = name2.reduce("Hello") { $0 + ", " + $1} // Hello
```

How to Install
----------------------------

### Embedded Framework

1. Put [swiftf.xcodeproj](Project/swiftf.xcodeproj) into your project in Xcode.
2. Click the project icon and select the "General" tab.
3. Add swiftf.framework to "Embedded Binaries".
4. `import swiftf` in your swift files.

Put _swiftf.framework_ into your project.

License
----------------------------

[The MIT License](LICENSE)
