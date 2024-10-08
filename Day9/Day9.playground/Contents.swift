import UIKit

func greetUser(){
    print("Hi there!")
}

greetUser()

var greetCopy: () -> Void = greetUser

greetCopy()

let sayHello = { (name: String) -> String in
    return "Hello \(name)!"
}


func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data : (Int) -> String = getUserData
let user = data(1989)
print(data)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
//let sortedTeam = team.sorted()
//print(sortedTeam)
//
//func captainFirstSorted(name1: String, name2: String) -> Bool {
//    if name1 == "Suzanne" {
//        return true
//    } else if name2 == "Suzanne" {
//        return false
//    }
//    
//    return name1 < name2
//}
//
//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

let captainTeamSorted = team.sorted {
    
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1
    
}

let reverseTeam = team.sorted { return $0 > $1 }

let tOnly = team.filter { $0.hasPrefix("T") }

let uppercaseTeam = team.map { $0.uppercased() }

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls = makeArray(size:50) {
    Int.random(in: 1...20)
}

print(rolls)


func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This si the third work")
}
