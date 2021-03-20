/*
// 定数 let
// 変数 var

//let msg: String
//msg = "hello world"
//var msg = "hello world"

//msg = "hello again"

//print(msg)
*/

/*
//Int
let i = 10

//Float Double
let d = 53.8

//String
let s = "hello"

//Bool true/false
let flag = true

var x = "five"
x = String(5)
*/

/*
var y = 10
//y = y + 5
y += 5
print(y)

print("hello " + "world")
*/

/*
let score = 40
let result: String

//if score > 80 {
//    result = "great"
//} else if score > 60 {
//    result = "good"
//} else {
//    result = "so so ..."
//}

result = score > 80 ? "great" : "so so ..."

print(result)
*/

/*
let num = 3

switch num {
case 0:
    print("zero")
case 1, 2, 3:
    print("small")
case 4...6:
    print("4/5/6")
case 7..<9:
    print("7/8")
case let n where n > 20:
    print("\(n) is huge!")
default:
    print("n.a.")
}
*/

/*
var n = 10

while n < 3 {
    print(n)
    n += 1
}

repeat {
    print(n)
    n += 1
} while n < 3
*/

/*
for i in 0...5 {
    if i == 3 {
//        break
        continue
    }
    print(i)
}
*/

/*
//let s: String = nil
//let s: Optional<String> = nil
let s: String? = nil

//if s != nil {
//    print(s!) //unwrap
//}

//Optional Binding
if let value = s {
    print(value)
}
*/

/*
//配列、ダブル
//集合
//辞書

//var scores: [Int] = [50, 40]
//var scores = [50, 40]

//print(scores[0])
//scores[1] = 30
//print(scores)

//print(scores.count)
//print(scores.isEmpty)

var names = [String]()
names.append("taguchi")
names.append("fkoji")
names += ["dotinstall"]

for name in names {
    print(name)
}
*/

/*
//var items = ("apple", 5)
//print(items.0)
//items.1 = 8
//print(items)

//let (product, amount) = items
//print(product)
//print(amount)

//let (product, _) = items
//print(product)

var items = (product: "apple", amount: 5)
print(items.product)
*/

/*
//var winners: Set<int> = [3, 4, 8, 8]
//var winners: Set = [3, 5, 8, 8]
//print(winners.contains(3))
//winners.insert(10)
//winners.remove(5)
//print(winners)
//print(winners.count)

//let s = Set<Int>()
//print(s.isEmpty)

let a: Set = [1, 3, 5, 8]
let b: Set = [3, 5, 8, 9]

print(a.union(b))
print(a.intersection(b))
print(a.subtracting(b))
*/

/*
//var sales: Dictionary<String, Int> = ["taguchi": 200, "fkoji": 300]
//var sales = ["taguchi": 200, "fkoji": 300]
//sales["fkoji"] = 500
//print(sales["taguchi"] ?? "n.a.")
//sales["dotinstall"] = 400
//print(sales.count)
//
//for (key, value) in sales {
//    print("\(key): \(value)")
//}

let d = [String: Int]()
print(d.isEmpty)
*/

/*
// 関数

//func sayHi() {
//    print("hi")
//}
//
//sayHi()

func sayHi() -> String {
    return "hi"
}

print(sayHi())
*/

/*
// 関数
// 引数

//func sayHi(name: String) {
//    print("hi \(name)")
//}
//
//sayHi(name: "tom")

//func sayHi(from name: String) {
//    print("hi \(name)")
//}
//
//sayHi(from: "tom")

//func sayHi(_ name: String) {
//    print("hi \(name)")
//}
//
//sayHi("tom")

func sayHi(_ name: String = "tom") {
    print("hi \(name)")
}

sayHi()
*/

/*
// 関数
// 引数 -> 定数

func add10(x: inout Int) {
    x = x + 10
    print(x)
}

var i = 10
add10(x: &i)
print(i)
*/

/*
// Class

class User {
    let name: String // property
    var score: Int
    init() {
        self.name = "me!"
        self.score = 23
    }
}

//let user: User = User()
let user = User() // instance
print(user.name)
print(user.score)
user.score = 26
print(user.score)
*/

/*
class User {
    let name: String // property
    var score: Int
//    init(name: String, score: Int) {
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
    init() {
        self.name = "bob"
        self.score = 30
    }
}

//let tom = User(name: "tom", score: 23)
let tom = User("tom", 23)
print(tom.name)
print(tom.score)

let bob = User()
print(bob.name)
print(bob.score)
*/

/*
class User {
    let name: String
    var score: Int
    // 計算プロパティ
//    var level: Int {
//        get {
//            return Int(score / 10)
//        }
//        set {
//            if newValue >= 0 {
//                score = newValue * 10
//            }
//        }
//    }
    var level: Int {
        return Int(score / 10)
    }
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
}

let tom = User("tom", 23)
print(tom.level) // 2
//tom.level = 5
//print(tom.score) // 50
//tom.level = -3
//print(tom.score) // 50
*/

/*
class User {
    let name: String
    var score: Int {
        willSet {
            // before change
            print("\(score) -> \(newValue)")
        }
        didSet {
            // after change
            print("Changed: \(score - oldValue)")
        }
    }
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
}

let tom = User("tom", 23)
tom.score = 53
tom.score = 40
*/

/*
class User {
    let name: String
    var score: Int
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
    // method
//    func sayHi() {
//        print("hi \(name)")
//    }
//    func sayHi(msg: String) {
    func sayHi(_ msg: String) {
        print("\(msg) \(name)")
    }
}

let tom = User("tom", 23)
//tom.sayHi()
//tom.sayHi(msg: "hola")
tom.sayHi("hola")
*/

/*
// 継承
// User -> AdminUser

class User {
    let name: String
    var score: Int
    init(_ name: String, _ score: Int) {
        self.name = name
        self.score = score
    }
    final func sayHi() {
        print("hi \(name)")
    }
}

class AdminUser: User {
    func sayHello() {
        print("hello \(name)")
    }
    override func sayHi() {
        print("[admin] hi \(name)")
    }
}

let tom = User("tom", 23)
let bob = AdminUser("bob", 33)
print(bob.name)
print(bob.score)
bob.sayHi()
bob.sayHello()
*/
