///// Array /////

// flatMap
if true {
	let r: [Int] = [1, 2, 3].flatMap { [Int](count: $0, repeatedValue: $0) } // [1, 2, 2, 3, 3, 3]
	
	println(r)
}

// each
if true {
	[2, 3, 5].each { println($0) }
}

///// Optional /////

// flatMap
if true {
	let a: Int? = 2
	let b: Int? = 3
	
	let r: Int? = a.flatMap { a0 in b.flatMap { b0 in a0 + b0 } } // Optional(5)
	
	println(r)
}

// each
if true {
	let a: Int? = 2
	let b: Int? = nil
	
	a.each { println($0) } // 2
	b.each { println($0) } // prints nothing
}

// filter
if true {
	let a: Int? = 2
	let b: Int? = 3
	let c: Int? = nil
	
	let r1: Int? = a.filter { $0 % 2 == 0 } // Optional(2)
	let r2: Int? = b.filter { $0 % 2 == 0 } // nil
	let r3: Int? = c.filter { $0 % 2 == 0 } // nil
	
	println(r1)
	println(r2)
	println(r3)
}

// reduce
if true {
	let name1: String? = "world"
	let name2: String? = nil
	
	let r1: String = name1.reduce("Hello") { $0 + ", " + $1} // Hello, world
	let r2: String = name2.reduce("Hello") { $0 + ", " + $1} // Hello
	
	println(r1)
	println(r2)
}