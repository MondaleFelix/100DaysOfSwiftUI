import UIKit

var name: String = "Ted"
name = "Rebecca"

let user = "Daphne"

print(user)

let actor = "Tom Cruise"

let quote = "He tapped a sign saying \"Believe\" and walked away."

let movie = """
A day in
the life of an
Apple engineer
"""

print(actor.count)

print(quote.hasPrefix("He"))
print(quote.hasSuffix("Away."))

let score = 10
let highScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))

let id = Int.random(in: 1...1000)

let score1 = 30.0

let goodDogs: Bool = true
let gameOver: Bool = false

var isSaved = false
isSaved.toggle()

let name1: String = "Taylor"
let age = 26
let message = "I'm \(name) and I'm \(age) years old"
print(message)

var colors: [String] = ["Red", "Green", "Blue"]
let numbers: [Int] = [4,8,15,16]
var readings: [Double] = [0.1, 0.5, 0.8]

print(colors[0])
print(readings[2])
colors.append("Tartan")
colors.remove(at: 0)
print(colors.count)
print(colors.contains("Octarine"))

let employee: [String: String] = [
    "name" : "Taylor",
    "job"  : "Singer"
]

print(employee["name", default: "Unknown"])
print(employee["name", default: "Unknown"])

var numbers1  = Set([1,1,3,5,7])
print(numbers1)

numbers1.insert(10)


enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .friday

var score2 : Double = 0

let player: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isEnabled: Bool = true
var albums: [String] = ["Red", "Fearless"]
var user1: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])

var teams: [String] = [String]()
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var system: UIStyle = .light

let age2 = 16

if age < 12 {
    print("You can't vote")
} else if age < 18 {
    print("You can vote soon")
} else {
    print("You can vote now")
}

let temp = 26
if temp > 20 && temp < 30 {
    print("It's a nice day")
}

enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("A nice day")
case .rain:
    print("Pack an umbrella")
default:
    print("Should be okay")
}

let age3 = 18
let canVote = age > 18 ? "Yes" : "No"

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os)")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i )")
}

for i in 1..<13 {
    print("5 x \(i) is \(5 * i )")
}


var lyric = "Haters gonna"
for _ in 1...5 {
    lyric += " hate"
}
print(lyric)

var count = 10
while count > 0 {
    print("\(count)...")
    count -= 1
}

print("Go!")

let files = ["me.jpg", "work.txt", "sophie.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(file)")
}

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

func rollDice() -> Int {
    Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user3 = getUser()
print("Name: \(user3.firstName) \(user3.lastName)")

let (firstName, _) = getUser()
print("Name: \(firstName)")

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result1 = isUppercase(string)

func printTimesTables1(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables1(for: 5)

func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome \(person)!")
    } else {
        print("Hi, \(person)!")
    }
}

greet("Tim", formal: true)
greet("Taylor")

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "123456" {
        throw PasswordError.obvious
    }
    
    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}

let string1 = "12346"

do {
    let result = try checkPassword(string1)
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

let sayHello = { (name: String) -> String in
    "Hi there!"
}

let team = ["Gloria", "Suzanne", "Tiffany", "Tasha"]

let onlyT = team.filter{
     $0.hasPrefix("T")
}

print(onlyT)

struct Album {
    let title: String
    let artist: String
    var isReleased = true
    
    func printSummary() {
        print("\(title) by \(artist)")
    }
    
    mutating func removeFromSale() {
        isReleased = false
    }
}


let red = Album(title: "Red", artist: "Taylor Swift")
print(red.title)
red.printSummary()

struct Employee {
    let name : String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

struct BankAccount {
    
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

struct AppData {
    static let verion = "1.3 beta 2"
    static let settings = "settings.json"
}

class Employee1 {
    
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
    
}

class Developer: Employee1 {
    func work() {
        print("I'm coding for \(hours) hours")
    }
    
    override func printSummary() {
        print("I spend \(hours) hours a day searching Stack Overflow")
    }
}

let novall = Developer(hours: 8)
novall.work()
novall.printSummary()

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible : Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

class Singer {
    var name = "Adele"
}

var singer1 = Singer()
var singer2 = singer1
singer2.name = "Justin"
print(singer1.name)
print(singer2.name)

class User2 {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}


for i in 1...3 {
    let user = User2(id: i)
    print("User \(user.id): I'm in control!")
}

class User3 {
    var name = "Paul"
}

let user4 = User3()
user4.name = "Taylor"

protocol Vehicle1 {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car4: Vehicle1 {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
    
}

func commute(distance: Int, using vehicle: Vehicle1) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("Too slow!")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car4()
commute(distance: 100, using: car)

protocol Vehicle2 {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

let name5 = "Car"
var currentPassengers = 1

extension String {
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
    
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

var quote1 = "       The trutch is rarely pure and never simple        "
let trimmed = quote1.trimmed()

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
"""

print(lyrics.lines.count)

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guests count: \(guests.count)")
}

let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

if let peachOpposite = opposites["Peach"] {
    print(peachOpposite)
}

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

let input = ""
let number5 = Int(input) ?? 0
print(number)


let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased()
print("Next in line: \(chosen ?? "No one") ")


enum UserError1: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError1.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}
