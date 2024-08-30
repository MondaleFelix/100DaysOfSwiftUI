import UIKit

func showWelcome() {
    print("Welcome to my App!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want")
}

showWelcome()

let number = 139

if number.isMultiple(of: 2){
    print("Even")
} else {
    print("Odd")
}

let roll = Int.random(in: 1...20)

func printTimesTables(number:Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

let root = sqrt(169)

print(root)

func rollDice() -> Int {
     Int.random(in: 1...6)
}

//let result = rollDice()
//print(result)

func areStringsSame(s1:String, s2:String) -> Bool {
    
     s1.sorted() == s2.sorted()
}

//func isUppercase(string: String) -> Bool {
//    string == string.uppercased()
//}

//
//func getUser() -> (firstName: String, lastName: String) {
//    ("Taylor", "Swift")
//}
//
//let user = getUser()
//print("Name: \(user.firstName) \(user.lastName)")

func getUser() -> (String, String) {
    ("Taylor", "Swift")
}

//let user = getUser()
//print("Name: \(user.0) \(user.1)")
//
//let firstName = user.0
//let lastName = user.1

let (firstName, _) = getUser()

print("Name:\(firstName)")

func rollDice(sides:Int, count: Int) ->[Int] {
    
    var rolls = [Int]()
    
    for _ in 1...count {
        
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

func printTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(for: 5)
