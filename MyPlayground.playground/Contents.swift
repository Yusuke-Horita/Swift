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
