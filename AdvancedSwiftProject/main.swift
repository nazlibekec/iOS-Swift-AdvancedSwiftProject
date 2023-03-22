//
//  main.swift
//  AdvancedSwiftProject
//
//  Created by Nazlı Bekeç on 21.03.2023.
//

import Foundation

let classJames = MusicianClass(name: "James", age: 30, instrument: "Guitar")
//    print(classJames.age)
var structJames = MusicianStruct(name: "James", age: 30, instrument: "Guitar")
//    print(structJames.age)

//MARK: IMMUTABLE STRUCT

classJames.age = 31
//    print(classJames.age)
structJames.age = 31  //değiştirebilmek için var olarak tanımlaman gerekir.
//    print(structJames.age)

// MARK:  REFERENCE VS VALUE TYPE
// References Types - Class : same object new reference - 1 object + 2 Reference
// Value Types - Struct : new object - 2 object

let copyClassJames = classJames
var copyStructJames = structJames
//    print(copyClassJames.age)
//    print(copyStructJames.age)

copyClassJames.age = 32
copyStructJames.age = 32
//    print(copyClassJames.age)
//    print(copyStructJames.age)

//    print(classJames.age) // iki farklı referans tek bir obje içerisinde heap e kaydolduğu için asıl olan objede değişti.
//    print(structJames.age) // 2 obje oluşturduğu için değiştrimedi.

// MARK: FUNCTION VS. MUTATING FUNCTION

//    print(classJames.age)
classJames.happyBirthday()
//    print(classJames.age)

//    print(structJames.age)
structJames.happyBirthday()
//    print(structJames.age)

// MARK: TUPLE

let myTuple = (1, 3)
//    print(myTuple.1)
var myTuple2 = (1,3,5)
    myTuple2.2 = 10
//    print(myTuple2.2)
let myTuple3 = ("Nazli", 100)
 //   print(myTuple3)
let myTuple4 = (10, [10, 20, 30])
//    print(myTuple4.1[1])
let myString : String?
let predefinedTuple : (String, String)
    predefinedTuple.0 = "Nazli"
    predefinedTuple.1 = "Bekeç"
//    print(predefinedTuple)
let newTuple = (name: "Nazli", aa: true)
//    print(newTuple.name)
//    print(newTuple.aa)

// MARK: GUARD LET VS IF LET

// Guard-Negative (daha korunaklı) , If-Positive

let myNumber = "nazli"

func convertToIntegerGuaard (stringInput : String) -> Int {
    guard let myInteger = Int(stringInput) else {
        return 0
    }
    return myInteger
}

func converrToIntegerIf (stringInput : String) -> Int {
    if let myInteger = Int(stringInput) {
        return myInteger
    } else {
        return 0
    }
}
//    print(converrToIntegerIf(stringInput: myNumber))
//    print(convertToIntegerGuaard(stringInput: myNumber))

// MARK: SWITCH-CASE

let myNum = 11

//  Remainder kalanı bulma demektir.
let myRemainder = myNum % 8
    print(myRemainder)
if myRemainder == 1 {
    print("its 1")
} else if myRemainder == 2 {
    print("its 2")
} else if myRemainder == 3 {
    print("its 3")
}

// bunun yerine kullanıbilecek kod

switch myRemainder {
case 1: print("its 1")
case 2: print("its 2")
case 3...5 : print("its 3...5")
default: print("non")
}

// MARK: PROTOCOL

protocol Running {
    func myRun()
}
class Dog : Running {
    func myRun() {
        print("dog")
    }
}
struct Cat : Running {
    func myRun() {
        print("cat")
    }
}
let dog = Dog()
let cat = Cat()
dog.myRun()
cat.myRun()

// MARK: CLOSURE 
func sum(num1 : Int, num2 : Int) -> Int {
    return num1 + num2
}
func calculate(num1 : Int, num2 : Int, myFunction : (Int, Int) -> Int ) -> Int {
    return myFunction(num1, num2)
}
calculate(num1: 5, num2: 2, myFunction: { (num1, num2) -> Int in
    return num1 * num2
})
calculate(num1: 5, num2: 2, myFunction: { (num1, num2) in
    return num1 * num2
})
calculate(num1: 5, num2: 2, myFunction: { (num1, num2) in num1 * num2 })

calculate(num1: 5, num2: 2, myFunction: { $0 * $1 })

let myArray = [10, 20, 30, 40]
func test  (num1: Int) -> Int{
    return num1 / 5
}
print(myArray.map(test))

