import UIKit

class Game {
    var score = 0 {
        didSet{
            print("Score is not \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) hours a day")
    }
    
    
    
}

class Developer: Employee {
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indeted usiing tabs or spaces")
    }
    
    func work(){
        print("I'm writing code for \(hours)")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours)")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours:8)
novall.printSummary()


class Vehicle {
    
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
    
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}


let teslaX = Car(isElectric: true, isConvertible: false)

//class User {
//    var username = "Anonymous"
//    
//    func copy() -> User {
//        let user = User()
//        user.username = username
//        return user
//    }
//}
//
//var user1 = User()
//var user2 = user1
//user2.username = "Taylor"
//
//print(user1.username)
//print(user2.username)

//class User {
//    
//    let id: Int
//    
//    init(id: Int) {
//        self.id = id
//        print("User \(id): I'm alive!")
//    }
//    
//    deinit {
//        print("User \(id): I'm dead!")
//    }
//}
//
//for i in 1...3 {
//    let user = User(id: i)
//    print("User \(user.id): I'm in control!")
//}
//
//
//var users = [User]()
//for i in 1...3 {
//    let user = User(id: i)
//    print("User \(user.id): I'm in control!")
//    users.append(user)
//}
//
//print("Loop is finished!")
//users.removeAll()
//print("Array is clear")


class User {
    var name = "Paul"
}

var user = User()
user.name = "Taylor"
user = User()
print(user.name)

