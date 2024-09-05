import UIKit

var greeting = "Hello, playground"

let opposites = [
    "Mario" : "Luigi",
    "Luigi" : "Waluigi"
]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("This optional was empty")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let number = number {
    square(number: number)
} else {
    print("That number was nil")
}

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Number is nil")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

var myVar: Int? = 3

if let myVar = myVar {
    print("Run if myVar has a value inside")
}

//guard let myVar = myVar else {
//    print("run if myVar does not have a value")
//}

let captains = [
    "Enterprise" : "Picard",
    "Voyager" : "Janeway",
    "Defiant" : "Sisko"
]

let new = captains["Serenity"] ?? "N/A"

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print("Author")

let input = ""
let number1 = Int(input) ?? 0

print(number1)

let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"

var book1: Book? = nil
let author1 = book1?.author?.first?.uppercased() ?? "A"

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)

